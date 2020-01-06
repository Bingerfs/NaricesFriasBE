class ApadrinadosController < ApplicationController

  devise_token_auth_group :member, contains: [:voluntario, :admin]
  before_action :authenticate_member!, except: [:show, :index, :download]
    #devise_token_auth_group :member, contains: [:voluntario, :admin]
    #before_action :authenticate_member!
  
    before_action :set_apadrinado, only: [:show, :update, :destroy]
  
    # GET /apadrinados
    def index
      @apadrinados = Apadrinado.all
      render json: @apadrinados
    end
  
    def download
      @apadrinado = set_apadrinado
      send_file(@apadrinado.picture.path, type: @apadrinado.picture_content_type, disposition: 'inline')
    end
  
    # GET /apadrinados/1
    def show
      @apadrinado = set_apadrinado
      puts @apadrinado.picture.url
      # @apadrinado[:url] = apadrinado.first.picture.url(:medium)
      render json: @apadrinado
    end
   
  
    # POST /apadrinados
    def create
      @apadrinado = Apadrinado.create(apadrinado_params)
  
      if @apadrinado.save
        render json: @apadrinado, status: :created, location: @apadrinado
      else
        render json: @apadrinado.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /apadrinados/1
    def update
      if @apadrinado.update(apadrinado_params)
        render json: @apadrinado
      else
        render json: @apadrinado.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /apadrinados/1
    def destroy
      @apadrinado = set_apadrinado
      @apadrinado.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_apadrinado
        @apadrinado = Apadrinado.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def apadrinado_params
        params.permit(:name, :description, :picture)
      end
  end