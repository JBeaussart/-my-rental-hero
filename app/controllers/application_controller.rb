class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :company])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :company, :password, :current_password])
  end
end
