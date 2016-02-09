class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # 2/8 4:48 に削除
  #protect_from_forgery with: :exception 

  #　んでこれを追加
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:edit) << :username
  end

  #config.action_controller.permit_all_parameters = true
end