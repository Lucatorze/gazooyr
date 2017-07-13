class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @gazooies = Gazooy.all
  end

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar, :email, :password, :password_confirmation, :current_password])
  end


end