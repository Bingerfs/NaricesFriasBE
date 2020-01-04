class CalendariosController < ApplicationController
  #devise_token_auth_group :member, contains: [:voluntario, :admin]
  #before_action :authenticate_member!
  before_action :set_calendario, only: [:show, :update, :destroy]

  # GET /calendarios
  def index
    @calendarios = Calendario.all

    render json: @calendarios
  end

  def download
    @calendario = set_calendario
    send_file(@calendario.picture.path, type: @calendario.picture_content_type, disposition: 'inline')
  end

  # GET /calendarios/1
  def show
    render json: @calendario
  end

  # POST /calendarios
  def create
    @calendario = Calendario.new(calendario_params)

    if @calendario.save
      render json: @calendario, status: :created, location: @calendario
    else
      render json: @calendario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calendarios/1
  def update
    if @calendario.update(calendario_params)
      render json: @calendario
    else
      render json: @calendario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calendarios/1
  def destroy
    
    @calendario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendario
      @calendario = Calendario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def calendario_params
      # params.require(:calendario).permit(:titulo, :descripcion, :fecha, :lugar, :hora, :picture)
      params.permit(:titulo, :descripcion, :fecha, :lugar, :hora, :picture)
    end
end