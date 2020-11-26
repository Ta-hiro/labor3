class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    @wedays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
  end
end
