class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters , if: :devise_controller?
  # もしdeviseに関するコントローラーの処理であれば、そのときだけconfigure_permitted_parametersメソッドを実行

  private 
  def configure_permitted_parameters 
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    # devise_parameter_sanitizer.permit(:deviseの処理名, keys: [:許可するキー])
  end 
end
