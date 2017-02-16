class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_parmitted_paramaters, if: :devise_controller?

  def configure_parmitted_paramaters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:family_name, :given_name, :avator, :agreement])
  end

  def after_sign_out_path_for(resource) #サインアウトした後のリダイレクト先の指定
    'spaces_path'
  end

  def after_sign_in_path_for(resource) #サインインした後のリダイレクト先の指定
    'spaces_path'
  end

  def after_sign_up_path_for(resource) #サインアップした後のリダイレクト先の指定
    'new_user_confirmation_path'
  end
end
