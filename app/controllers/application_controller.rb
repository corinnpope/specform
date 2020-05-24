class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :masquerade_user!

    set_current_tenant_through_filter
    before_action :find_current_tenant
  
    def find_current_tenant
      # set to Account.first for now, you'll change this later
      set_current_tenant(current_user)
    end

  protected


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
