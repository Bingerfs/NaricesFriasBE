# frozen_string_literal: true
module Overrides
class Voluntarios::RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_action :configure_sign_up_params, only: [:create]
  before_action :configure_account_update_params, only: [:update]
  before_action :set_voluntario, only: [:update, :editar, :elim]
  # GET /voluntarios
  def index
    @voluntarios = Voluntario.all

    render json: @voluntarios
  end

  def modificar
    if @voluntario.update(adoptado_params)
      render json: @voluntario
    else
      render json: @voluntario.errors, status: :unprocessable_entity
    end
  end

  def elim
    @voluntario.destroy
  end
  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

   protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :telefono])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :telefono, :email])
  end

  def set_voluntario
    puts "uggggghhghhhhhhhhhhh"
    @voluntario = Voluntario.find(params[:id])
  end

  def voluntario_params
    params.require(:voluntario).permit(:name, :telefono, :email, :id)
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
end
