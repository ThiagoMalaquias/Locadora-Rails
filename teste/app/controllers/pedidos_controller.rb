class PedidosController < ApplicationController
  before_action :set_pedido, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /pedidos
  # GET /pedidos.json
  def index
     if current_user.role == 'admin' 
        @pedidos = Pedido.all
        @cats = Cat.all
     else
        redirect_to "/", notice: 'Rota desconhecida.'
     end 
  end

  # GET /pedidos/1
  # GET /pedidos/1.json
  def show
    if current_user.role == 'admin' 
      @cats = Cat.all
    else
      redirect_to "/", notice: 'Rota desconhecida.'
    end 
  end

  # GET /pedidos/new
  def new
    @pedido = Pedido.new
    @cats = Cat.all
    @filmes = Filme.all
  end

  # GET /pedidos/1/edit
  def edit
    if current_user.role == 'admin' 
      @cats = Cat.all
    else
      redirect_to "/", notice: 'Rota desconhecida.'
    end 
  end

  # POST /pedidos
  # POST /pedidos.json
  def create
    @cats = Cat.all
    @pedido = Pedido.new(pedido_params)

    respond_to do |format|
      if @pedido.save
        carrinho = []
        carrinho = JSON.parse(cookies[:carrinho]) if cookies[:carrinho].present?
        carrinho.clear
        cookies[:carrinho] = { value: carrinho.to_json, expires: 1.year.from_now, httponly: true }
        
        format.html { redirect_to '/', notice: 'Pedido feito com sucesso. Nossa equipe entrará em contato para mais informações.' }
        format.json { render :show, status: :created, location: @pedido }
        
      else
        format.html { render :new }
        format.json { render json: @pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedidos/1
  # PATCH/PUT /pedidos/1.json
  def update
    if current_user.role == 'admin' 
      @cats = Cat.all
      respond_to do |format|
        if @pedido.update(pedido_params)
          format.html { redirect_to @pedido, notice: 'Pedido was successfully updated.' }
          format.json { render :show, status: :ok, location: @pedido }
        else
          format.html { render :edit }
          format.json { render json: @pedido.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to "/", notice: 'Rota desconhecida.'
    end
  end

  # DELETE /pedidos/1
  # DELETE /pedidos/1.json
  def destroy
    if current_user.role == 'admin' 
      @cats = Cat.all
      @pedido.destroy
      respond_to do |format|
        format.html { redirect_to pedidos_url, notice: 'Pedido was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
       redirect_to "/", notice: 'Rota desconhecida.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = Pedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pedido_params
      params.require(:pedido).permit(:name, :cpf, :endereco, :bairro, :cidade, :cep, :email, :telefone, :filmes_pedido)
    end
end
