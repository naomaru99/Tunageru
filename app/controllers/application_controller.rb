class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :user_signed_in?

  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource)
     introduction_index_path
  end

  private
  def user_signed_in?
    unless student_signed_in? || worker_signed_in?
      redirect_to introduction_index_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:family_name, :first_name, :family_name_kana, :first_name_kana, :avatar]
  end




end
