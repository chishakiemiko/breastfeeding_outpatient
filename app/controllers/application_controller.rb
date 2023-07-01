class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  #新規登録時のストロングパラメータに「username, job, profile, avatar」カラムの追加
  def configure_permitted_parameters
      #新規登録時のストロングパラメータに「username, job, profile, avatar」の追加
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :avatar])
      devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
  end  
    
end
