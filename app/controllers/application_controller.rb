class ApplicationController < ActionController::Base
  before_action 

  private 
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(sign_up, :keys[:nickname])
  end 
end
