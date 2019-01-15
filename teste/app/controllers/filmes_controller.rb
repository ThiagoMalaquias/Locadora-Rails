class FilmesController < ApplicationController
  before_action :set_filme, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /filmes
  # GET /filmes.json
  def index
    @filmes = Filme.all.paginate(:page => params[:page], :per_page => 10)
    @cats = Cat.all
    @classis = Classi.all
  end

  # GET /filmes/1
  # GET /filmes/1.json
  def show
    @cats = Cat.all 
  end

  # GET /filmes/new
  def new
    @filme = Filme.new
    @cats = Cat.all 
  end

  # GET /filmes/1/edit
  def edit
    @cats = Cat.all 
  end

  # POST /filmes
  # POST /filmes.json
  def create
    @cats = Cat.all 
    @filme = Filme.new(filme_params)

    respond_to do |format|
      if @filme.save
        format.html { redirect_to @filme, notice: 'Filme was successfully created.' }
        format.json { render :show, status: :created, location: @filme }
      else
        format.html { render :new }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filmes/1
  # PATCH/PUT /filmes/1.json
  def update
    @cats = Cat.all 
    respond_to do |format|
      if @filme.update(filme_params)
        format.html { redirect_to @filme, notice: 'Filme was successfully updated.' }
        format.json { render :show, status: :ok, location: @filme }
      else
        format.html { render :edit }
        format.json { render json: @filme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filmes/1
  # DELETE /filmes/1.json
  def destroy
    @cats = Cat.all 
    @filme.destroy
    respond_to do |format|
      format.html { redirect_to filmes_url, notice: 'Filme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filme
      @cats = Cat.all 
      @filme = Filme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filme_params
      params.require(:filme).permit(:titulo, :ano, :duracao, :diretor, :sinopse, :cat_id, :classi_id)
    end
end
