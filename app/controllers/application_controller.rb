class ApplicationController < ActionController::Base
    helper_method :check_if_someone_is_logged_in?, :current_user
    before_action :authorized, :is_govenor
   
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
            @hp = HuntProgression.find(current_user.hunt_progressions.sort.last.id)
            if @hp.check_for_dead_horse
                redirect_to dead_horse_path
            end
        end
    end

    def is_govenor
        if current_user.present?
            if current_user.username == "Lord Governor Chasslesworth"
                redirect_to govenor_path
            end
        end
    end


end
