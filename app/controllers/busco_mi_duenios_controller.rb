class BuscoMiDueniosController < ApplicationController
  devise_token_auth_group :member, contains: [:voluntario, :admin]
  before_action :authenticate_member!
  before_action :set_busco_mi_duenio, only: [:show, :update, :destroy]

  # GET /busco_mi_duenios
  def index
    @busco_mi_duenios = BuscoMiDuenio.all

    render json: @busco_mi_duenios
  end

  # GET /busco_mi_duenios/1
  def show
    render json: @busco_mi_duenio
  end

  # POST /busco_mi_duenios
  def create
    @busco_mi_duenio = BuscoMiDuenio.new(busco_mi_duenio_params)

    if @busco_mi_duenio.save
      render json: @busco_mi_duenio, status: :created, location: @busco_mi_duenio
    else
      render json: @busco_mi_duenio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /busco_mi_duenios/1
  def update
    if @busco_mi_duenio.update(busco_mi_duenio_params)
      render json: @busco_mi_duenio
    else
      render json: @busco_mi_duenio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /busco_mi_duenios/1
  def destroy
    @busco_mi_duenio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_busco_mi_duenio
      @busco_mi_duenio = BuscoMiDuenio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def busco_mi_duenio_params
      params.require(:busco_mi_duenio).permit(:edad, :tamanio, :string, :genero, :raza, :telefono)
    end
end
