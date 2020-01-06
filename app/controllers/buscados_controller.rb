class BuscadosController < ApplicationController

     # GET /Buscados
  def index
    @buscados = Buscado.all
    render json: @buscados
  end

  # GET /Buscados/1
  def show
    @buscado = set_buscado
    render json: @buscado
  end

  # POST /Buscados
  def create
    @buscado = Buscado.new(buscado_params)

    if @buscado.save
      render json: @buscado, status: :created, location: @buscado
    else
      render json: @buscado.errors, status: :unprocessable_entity
    end
  end




  # PATCH/PUT /Buscados/1
  def update
    @buscado = set_buscado
    if @buscado.update(buscado_params)
      render json: @buscado
    else
      render json: @buscado.errors, status: :unprocessable_entity
    end
  end

  # DELETE /Buscados/1
  def destroy
    @buscado = set_buscado
    @buscado.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buscado
      @buscado = Buscado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def buscado_params
      params.require(:buscado).permit(:name, :size, :age, :esterilizacion, :contact, :gender, :description)
    end
end