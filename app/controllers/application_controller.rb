class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :configure_devise_params, if: :devise_controller?
  
  # def configure_devise_params
  #   devise_parameter_sanitizer.for(:sign_up) do |u|
  #     u.permit(:username, :first_name, :last_name, :date_of_birth, :gender, :location, :email, :password, :password_confirmation)
  #   end
  # end

  # def userid
  #     @userid = current_user.id
  #     return @userid
  # end

  before_action :configure_devise_permitted_parameters, if: :devise_controller?

  protected

  def configure_devise_permitted_parameters
    registration_params = [:username, :first_name, :last_name, :date_of_birth, :gender, :location, :email, :password, :password_confirmation]

    devise_parameter_sanitizer.for(:sign_in) {
        |u| u.permit(registration_params) }

    if params[:action] == 'update'
      devise_parameter_sanitizer.for(:account_update) { 
        |u| u.permit(registration_params << :current_password)
      }
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.for(:sign_up) { 
        |u| u.permit(registration_params) 
      }
    end
  end

end
