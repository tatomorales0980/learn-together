class ApplicationController < ActionController::Base
  # encoding: utf-8
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:picture, :first_name, :last_name, :gender, :age, :street_address, :city, :state, :country, :nationality, :introduction, :email, :password)}  
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:picture, :first_name, :last_name, :gender, :age, :street_address, :city, :state, :country, :nationality, :introduction, :email, :password, :current_password)}
  end
end
