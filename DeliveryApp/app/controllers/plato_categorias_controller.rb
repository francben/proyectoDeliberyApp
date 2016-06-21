class PlatoCategoriasController < ApplicationController
  before_action :set_plato_categoria, only: [:show, :edit, :update, :destroy]

  # GET /plato_categorias
  # GET /plato_categorias.json
  def index
    @plato_categorias = PlatoCategoria.all
  end

  # GET /plato_categorias/1
  # GET /plato_categorias/1.json
  def show
  end

  # GET /plato_categorias/new
  def new
    @plato_categoria = PlatoCategoria.new
  end

  # GET /plato_categorias/1/edit
  def edit
  end

  # POST /plato_categorias
  # POST /plato_categorias.json
  def create
    @plato_categoria = PlatoCategoria.new(plato_categoria_params)

    respond_to do |format|
      if @plato_categoria.save
        format.html { redirect_to @plato_categoria, notice: 'Plato categoria was successfully created.' }
        format.json { render :show, status: :created, location: @plato_categoria }
      else
        format.html { render :new }
        format.json { render json: @plato_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plato_categorias/1
  # PATCH/PUT /plato_categorias/1.json
  def update
    respond_to do |format|
      if @plato_categoria.update(plato_categoria_params)
        format.html { redirect_to @plato_categoria, notice: 'Plato categoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @plato_categoria }
      else
        format.html { render :edit }
        format.json { render json: @plato_categoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plato_categorias/1
  # DELETE /plato_categorias/1.json
  def destroy
    @plato_categoria.destroy
    respond_to do |format|
      format.html { redirect_to plato_categorias_url, notice: 'Plato categoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plato_categoria
      @plato_categoria = PlatoCategoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plato_categoria_params
      params.require(:plato_categoria).permit(:plato_id, :categoria_id, :menu_id, :empresa_id)
    end
end
