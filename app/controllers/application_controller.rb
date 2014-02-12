class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit! }
  end

  # restrict access to admin module for non-admin users
  def authenticate_admin_user!
    redirect_to root_path if current_user.nil? || !current_user.admin?
  end

end
