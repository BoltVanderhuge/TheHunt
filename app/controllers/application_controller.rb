class ApplicationController < ActionController::Base
    def current_user
        # Sets and returns an instance from the session ID
        @current_user ||= User.find_by(id: session[:user_id])
    end
end
