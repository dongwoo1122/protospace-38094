class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :show
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :encrypted_password,:name, :profile, :occupation, :position])
  end
end
