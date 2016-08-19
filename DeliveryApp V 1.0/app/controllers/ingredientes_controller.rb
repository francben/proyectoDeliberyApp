class IngredientesController < ApplicationController
  before_action :set_ingrediente, only: [:show, :edit, :update, :destroy]

  # GET /ingredientes
  # GET /ingredientes.json
  def index
    @ingredientes = Ingrediente.all
  end

  # GET /ingredientes/1
  # GET /ingredientes/1.json
  def show
  end

  # GET /ingredientes/new
  def new
    @ingrediente = Ingrediente.new
  end

  # GET /ingredientes/1/edit
  def edit
  end

  # POST /ingredientes
  # POST /ingredientes.json
  def create
    @ingrediente = Ingrediente.new(ingrediente_params)

    respond_to do |format|
      if @ingrediente.save
        format.html { redirect_to @ingrediente, notice: 'Ingrediente was successfully created.' }
        format.json { render :show, status: :created, location: @ingrediente }
      else
        format.html { render :new }
        format.json { render json: @ingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredientes/1
  # PATCH/PUT /ingredientes/1.json
  def update
    respond_to do |format|
      if @ingrediente.update(ingrediente_params)
        format.html { redirect_to @ingrediente, notice: 'Ingrediente was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingrediente }
      else
        format.html { render :edit }
        format.json { render json: @ingrediente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredientes/1
  # DELETE /ingredientes/1.json
  def destroy
    @ingrediente.destroy
    respond_to do |format|
      format.html { redirect_to ingredientes_url, notice: 'Ingrediente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingrediente
      @ingrediente = Ingrediente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingrediente_params
      params.require(:ingrediente).permit(:nombre, :estado)
    end
end
