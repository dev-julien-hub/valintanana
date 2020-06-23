class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	include ApplicationHelper



 protected

  def configure_permitted_parameters
    attributes = [:name,:last_name,:sexe,:phone,:pays,:birthday, :avatar,:region]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end

end
