class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :admin_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  include SessionsHelper


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

  private

  # Проверяет статус входа пользователя.
  def logged_in_user
    unless user_signed_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def admin_controller?
    self.class < ActiveAdmin::BaseController
  end
end