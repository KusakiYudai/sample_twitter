class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_current_user
    protected

    def configure_permitted_parameters
      added_attrs = [ :email, :nickname, :desc, :password, :password_confirmation ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    end


  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

end
