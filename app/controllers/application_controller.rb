class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        # Add my attributes added to the devise User class
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :designation] )
        devise_parameter_sanitizer.permit(:account_update, keys: [ :username, :email, :password, :password_confirmation, :current_password, :designation])
    end
end
