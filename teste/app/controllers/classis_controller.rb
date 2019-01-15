class ClassisController < ApplicationController
  before_action :set_classi, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /classis
  # GET /classis.json
  def index
    @classis = Classi.all
    @cats = Cat.all
  end

  # GET /classis/1
  # GET /classis/1.json
  def show
    @cats = Cat.all
  end

  # GET /classis/new
  def new
    @classi = Classi.new
    @cats = Cat.all
  end

  # GET /classis/1/edit
  def edit
  end

  # POST /classis
  # POST /classis.json
  def create
    @classi = Classi.new(classi_params)
    @cats = Cat.all

    respond_to do |format|
      if @classi.save
        format.html { redirect_to @classi, notice: 'Classi was successfully created.' }
        format.json { render :show, status: :created, location: @classi }
      else
        format.html { render :new }
        format.json { render json: @classi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classis/1
  # PATCH/PUT /classis/1.json
  def update
    respond_to do |format|
      if @classi.update(classi_params)
        format.html { redirect_to @classi, notice: 'Classi was successfully updated.' }
        format.json { render :show, status: :ok, location: @classi }
      else
        format.html { render :edit }
        format.json { render json: @classi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classis/1
  # DELETE /classis/1.json
  def destroy
    @cats = Cat.all
    @classi.destroy
    respond_to do |format|
      format.html { redirect_to classis_url, notice: 'Classi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classi
      @classi = Classi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classi_params
      params.require(:classi).permit(:nome)
    end
end
