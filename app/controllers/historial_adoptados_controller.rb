class HistorialAdoptadosController < ApplicationController
  devise_token_auth_group :member, contains: [:voluntario, :admin]
  before_action :authenticate_member!
  before_action :set_historial_adoptado, only: [:show, :update, :destroy]

  # GET /historial_adoptados
  def index
    @historial_adoptados = HistorialAdoptado.all

    render json: @historial_adoptados
  end

  # GET /historial_adoptados/1
  def show
    render json: @historial_adoptado
  end

  # POST /historial_adoptados
  def create
    @historial_adoptado = HistorialAdoptado.new(historial_adoptado_params)
    if(Adoptado.find(params[:historial_adoptado][:adoptado_id]))
      @historial_adoptado.adoptado=Adoptado.find(params[:historial_adoptado][:adoptado_id])
      puts "encontrado"
    end
    if @historial_adoptado.save
      render json: @historial_adoptado, status: :created, location: @historial_adoptado
    else
      render json: @historial_adoptado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /historial_adoptados/1
  def update
    if @historial_adoptado.update(historial_adoptado_params)
      render json: @historial_adoptado
    else
      render json: @historial_adoptado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /historial_adoptados/1
  def destroy
    @historial_adoptado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historial_adoptado
      @historial_adoptado = HistorialAdoptado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def historial_adoptado_params
      params.require(:historial_adoptado).permit(:nombreDuegno, :telefonoDuegno, :direccionDuegno, :adoptado_id)
    end
end
