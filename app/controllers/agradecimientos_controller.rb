class AgradecimientosController < ApplicationController

    #devise_token_auth_group :member, contains: [:voluntario, :admin]
    #before_action :authenticate_member!, except: [:show, :index]
    #devise_token_auth_group :member, contains: [:voluntario, :admin]
    #before_action :authenticate_member!
  
    before_action :set_agradecimiento, only: [:show, :update, :destroy]
  
    # GET /agradecimientos
    def index
      @agradecimientos = Agradecimiento.all
      render json: @agradecimientos
    end
  
    def download
      @agradecimiento = set_agradecimiento
      send_file(@agradecimiento.picture.path, type: @agradecimiento.picture_content_type, disposition: 'inline')
    end
  
    # GET /agradecimientos/1
    def show
      @agradecimiento = set_agradecimiento
      puts @agradecimiento.picture.url
      # @agradecimiento[:url] = agradecimiento.first.picture.url(:medium)
      render json: @agradecimiento
    end
   
  
    # POST /agradecimientos
    def create
      @agradecimiento = Agradecimiento.create(agradecimiento_params)
  
      if @agradecimiento.save
        render json: @agradecimiento, status: :created, location: @agradecimiento
      else
        render json: @agradecimiento.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /agradecimientos/1
    def update
      if @agradecimiento.update(agradecimiento_params)
        render json: @agradecimiento
      else
        render json: @agradecimiento.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /agradecimientos/1
    def destroy
      @agradecimiento = set_agradecimiento
      @agradecimiento.destroy
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_agradecimiento
        @agradecimiento = Agradecimiento.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def agradecimiento_params
        params.permit(:description, :picture)
      end
  end