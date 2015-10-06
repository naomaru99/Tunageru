class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :user_signed_in?

  protect_from_forgery with: :exception


  def current_user(column)
    if columun == ""
      if student_signed_in?
        current_student
      elsif worker_signed_in?
        current_worker
      end

    else
      if student_signed_in?
        current_student.(column)
      elsif worker_signed_in?
        current_worker.(column)
      end
    end
  end

  def current_user_type
    if student_signed_in?
      student
    elsif worker_signed_in?
      woreker
    else
      guest
    end
  end

        

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
    devise_parameter_sanitizer.for(:sign_up) << [:family_name, :first_name, :family_name_kana, :first_name_kana, :avatar, :email, :sex, :age, :area, :university, :company, :industry_interested, :job_category_interested, :introduce]
  end




end
