class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  # before_filter :authenticate_user!

  protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) do |u|
  #     u.permit(:email, :password, :password_confirmation, :full_name)
  #   end
  #   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
  # end

  before_filter :ie6_warning

  # Catch NotFound exceptions and handle them neatly, when URLs are mistyped or mislinked
  # rescue_from ActiveRecord::RecordNotFound do
  #   render template: 'errors/not_found', status: 404
  # end

  private

  def ie6_warning
    redirect_to ie6_warning_path if request.user_agent.to_s =~ /MSIE 6/
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
