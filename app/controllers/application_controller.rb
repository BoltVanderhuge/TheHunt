class ApplicationController < ActionController::Base
    helper_method :check_if_someone_is_logged_in?, :current_user
  
    

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def check_if_someone_is_logged_in?
        !current_user.nil?
    end

    def authorized
        redirect_to login_user_path unless check_if_someone_is_logged_in?
    end


end
