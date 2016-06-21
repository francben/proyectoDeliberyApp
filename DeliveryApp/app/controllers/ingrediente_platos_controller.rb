class IngredientePlatosController < ApplicationController
  before_action :set_ingrediente_plato, only: [:show, :edit, :update, :destroy]

  # GET /ingrediente_platos
  # GET /ingrediente_platos.json
  def index
    @ingrediente_platos = IngredientePlato.all
  end

  # GET /ingrediente_platos/1
  # GET /ingrediente_platos/1.json
  def show
  end

  # GET /ingrediente_platos/new
  def new
    @ingrediente_plato = IngredientePlato.new
  end

  # GET /ingrediente_platos/1/edit
  def edit
  end

  # POST /ingrediente_platos
  # POST /ingrediente_platos.json
  def create
    @ingrediente_plato = IngredientePlato.new(ingrediente_plato_params)

    respond_to do |format|
      if @ingrediente_plato.save
        format.html { redirect_to @ingrediente_plato, notice: 'Ingrediente plato was successfully created.' }
        format.json { render :show, status: :created, location: @ingrediente_plato }
      else
        format.html { render :new }
        format.json { render json: @ingrediente_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingrediente_platos/1
  # PATCH/PUT /ingrediente_platos/1.json
  def update
    respond_to do |format|
      if @ingrediente_plato.update(ingrediente_plato_params)
        format.html { redirect_to @ingrediente_plato, notice: 'Ingrediente plato was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingrediente_plato }
      else
        format.html { render :edit }
        format.json { render json: @ingrediente_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingrediente_platos/1
  # DELETE /ingrediente_platos/1.json
  def destroy
    @ingrediente_plato.destroy
    respond_to do |format|
      format.html { redirect_to ingrediente_platos_url, notice: 'Ingrediente plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingrediente_plato
      @ingrediente_plato = IngredientePlato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingrediente_plato_params
      params.require(:ingrediente_plato).permit(:ingrediente_id, :plato_id, :cantidad)
    end
end
