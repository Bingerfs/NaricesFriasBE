class ExtraviadosController < ApplicationController

    # GET /extraviados
 def index
   @extraviados = Extraviado.all

   render json: @extraviados
 end

 # GET /extraviados/1
 def show
   @extraviado = set_extraviado
   render json: @extraviado
 end

 # POST /extraviados
 def create
   @extraviado = Extraviado.new(extraviado_params)

   if @extraviado.save
     render json: @extraviado, status: :created, location: @extraviado
   else
     render json: @extraviado.errors, status: :unprocessable_entity
   end
 end

 # PATCH/PUT /extraviados/1
 def update
   @extraviado = set_extraviado
   if @extraviado.update(extraviado_params)
     render json: @extraviado
   else
     render json: @extraviado.errors, status: :unprocessable_entity
   end
 end

 # DELETE /extraviados/1
 def destroy
   @extraviado = set_extraviado
   @extraviado.destroy
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_extraviado
     @extraviado = Extraviado.find(params[:id])
   end

   # Only allow a trusted parameter "white list" through.
   def extraviado_params
     params.require(:extraviado).permit(:name, :size, :age, :esterilizacion, :contact)
   end
end