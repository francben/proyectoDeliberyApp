class RepartidorsController < ApplicationController
  before_action :set_repartidor, only: [:show, :edit, :update, :destroy]

  # GET /repartidors
  # GET /repartidors.json
  def index
    @repartidors = Repartidor.all
  end

  # GET /repartidors/1
  # GET /repartidors/1.json
  def show
  end

  # GET /repartidors/new
  def new
    @repartidor = Repartidor.new
  end

  # GET /repartidors/1/edit
  def edit
  end

  # POST /repartidors
  # POST /repartidors.json
  def create
    @repartidor = Repartidor.new(repartidor_params)

    respond_to do |format|
      if @repartidor.save
        format.html { redirect_to @repartidor, notice: 'Repartidor was successfully created.' }
        format.json { render :show, status: :created, location: @repartidor }
      else
        format.html { render :new }
        format.json { render json: @repartidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repartidors/1
  # PATCH/PUT /repartidors/1.json
  def update
    respond_to do |format|
      if @repartidor.update(repartidor_params)
        format.html { redirect_to @repartidor, notice: 'Repartidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @repartidor }
      else
        format.html { render :edit }
        format.json { render json: @repartidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repartidors/1
  # DELETE /repartidors/1.json
  def destroy
    @repartidor.destroy
    respond_to do |format|
      format.html { redirect_to repartidors_url, notice: 'Repartidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repartidor
      @repartidor = Repartidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repartidor_params
      params.require(:repartidor).permit(:nombre, :apellido, :telefono, :zona, :en_servicio)
    end
end
