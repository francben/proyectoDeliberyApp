class RolesController < ApplicationController
  before_action :set_rol, only: [:show, :edit, :update, :destroy]

  # GET /roles
  # GET /roles.json
  def index
    @roles = Rol.all
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
  end

  # GET /roles/new
  def new
    @rol = Rol.new
  end

  # GET /roles/1/edit
  def edit
  end

  # POST /roles
  # POST /roles.json
  def create
    @rol = Rol.new(rol_params)

    respond_to do |format|
      if @rol.save
        format.html { redirect_to @rol, notice: 'El rol se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @rol }
      else
        format.html { render :new }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roles/1
  # PATCH/PUT /roles/1.json
  def update
    respond_to do |format|
      if @rol.update(rol_params)
        format.html { redirect_to @rol, notice: 'El rol se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @rol }
      else
        format.html { render :edit }
        format.json { render json: @rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    @rol.destroy
    respond_to do |format|
      format.html { redirect_to roles_url, notice: 'El rol fue eliminado con éxito.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol
      @rol = Rol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rol_params
      params.require(:rol).permit(:nombre_rol, :descripcion_rol, :estado_rol)
    end
end
