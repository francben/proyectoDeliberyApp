class PreciosController < ApplicationController
  before_action :set_precio, only: [:show, :edit, :update, :destroy]

  # GET /precios
  # GET /precios.json
  def index
    @precios = Precio.all
  end

  # GET /precios/1
  # GET /precios/1.json
  def show
  end

  # GET /precios/new
  def new
    @precio = Precio.new
  end

  # GET /precios/1/edit
  def edit
  end

  # POST /precios
  # POST /precios.json
  def create
    @precio = Precio.new(precio_params)

    respond_to do |format|
      if @precio.save
        format.html { redirect_to @precio, notice: 'Precio was successfully created.' }
        format.json { render :show, status: :created, location: @precio }
      else
        format.html { render :new }
        format.json { render json: @precio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /precios/1
  # PATCH/PUT /precios/1.json
  def update
    respond_to do |format|
      if @precio.update(precio_params)
        format.html { redirect_to @precio, notice: 'Precio was successfully updated.' }
        format.json { render :show, status: :ok, location: @precio }
      else
        format.html { render :edit }
        format.json { render json: @precio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precios/1
  # DELETE /precios/1.json
  def destroy
    @precio.destroy
    respond_to do |format|
      format.html { redirect_to precios_url, notice: 'Precio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_precio
      @precio = Precio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def precio_params
      params.require(:precio).permit(:plato_id, :categoria_id, :precio, :estado)
    end
end
