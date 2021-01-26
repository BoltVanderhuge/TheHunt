class ApplicationController < ActionController::Base
    helper_method :check_if_someone_is_logged_in?, :current_user
    before_action :authorized
    # rescue_from ActiveRecord::RecordNotFound, with: :not_found 
    # rescue_from Exception, with: :not_found
    # rescue_from ActionController::RoutingError, with: :not_found
    
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def check_if_someone_is_logged_in?
        !current_user.nil?
    end

    def has_progression?
        current_user.hunt_progressions.present?
    end


    def authorized
        redirect_to login_user_path unless check_if_someone_is_logged_in?
    end

    def part_of_the_hunt
        redirect_to user_path(@current_user) unless has_progression?
    end

    def killed_the_horse
        if current_user.hunt_progressions.present?
            @h = HuntProgression.find(current_user.hunt_progressions.ids)
            @hp = @h.first
            if @hp.check_for_dead_horse
                redirect_to dead_horse_path
            end
        end
    end


    


# def raise_not_found
#   raise ActionController::RoutingError.new("No route matches #{params[:unmatched_route]}")
# end

# def not_found
#   respond_to do |format|
#     format.html { render file: "public/404.html", layout: false, status: :not_found }
#     format.xml { head :not_found }
#     format.any { head :not_found }
#   end
# end

# def error
#   respond_to do |format|
#     format.html { render file: "#{Rails.root}/public/500", layout: false, status: :error }
#     format.xml { head :not_found }
#     format.any { head :not_found }
#   end
# end

end
