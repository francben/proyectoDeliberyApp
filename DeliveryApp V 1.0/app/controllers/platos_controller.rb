class PlatosController < ApplicationController
  before_action :set_plato, only: [:show, :edit, :update, :destroy]

  # GET /platos
  # GET /platos.json
  def index
    @platos = Plato.all
  end

  # GET /platos/1
  # GET /platos/1.json
  def show
  end

  # GET /platos/new
  def new
    @plato = Plato.new
  end

  # GET /platos/1/edit
  def edit
  end

  # POST /platos
  # POST /platos.json
  def create
    @plato = Plato.new(plato_params)

    respond_to do |format|
      if @plato.save
        format.html { redirect_to @plato, notice: 'Plato was successfully created.' }
        format.json { render :show, status: :created, location: @plato }
      else
        format.html { render :new }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platos/1
  # PATCH/PUT /platos/1.json
  def update
    respond_to do |format|
      if @plato.update(plato_params)
        format.html { redirect_to @plato, notice: 'Plato was successfully updated.' }
        format.json { render :show, status: :ok, location: @plato }
      else
        format.html { render :edit }
        format.json { render json: @plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platos/1
  # DELETE /platos/1.json
  def destroy
    @plato.destroy
    respond_to do |format|
      format.html { redirect_to platos_url, notice: 'Plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plato
      @plato = Plato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plato_params
      params.require(:plato).permit(:nombre, :img, :tiempo_preparacion, :estado)
    end
end
