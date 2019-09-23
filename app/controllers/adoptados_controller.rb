class AdoptadosController < ApplicationController
  devise_token_auth_group :member, contains: [:voluntario, :admin]
  before_action :authenticate_member!, except: [:show, :index]
  before_action :set_adoptado, only: [:show, :update, :destroy]

  # GET /adoptados
  def index
    @adoptados = Adoptado.all

    render json: @adoptados
  end

  # GET /adoptados/1
  def show
    render json: @adoptado
  end

  # POST /adoptados
  def create
    @adoptado = Adoptado.new(adoptado_params)

    if @adoptado.save
      render json: @adoptado, status: :created, location: @adoptado
    else
      render json: @adoptado.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adoptados/1
  def update
    if @adoptado.update(adoptado_params)
      render json: @adoptado
    else
      render json: @adoptado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adoptados/1
  def destroy
    @adoptado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoptado
      @adoptado = Adoptado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adoptado_params
      params.require(:adoptado).permit(:edad, :tamagno, :genero, :esterilizacion, :telefono)
    end
end
