class HuntsController < ApplicationController
    before_action :set_hunt, only: [:level_1]
    def level_1
    end


    def level_2
        cookies[:key] = {
            :value => ' Good show the secret phrase to get to the next level is Marjoram ',
            :expires => 90.seconds.from_now,
        }
        current_user.hunt_progressions.update(hunt_id: 2)
        @hun = Hunt.find(current_user.hunts.ids)
        @hunt = @hun.first
        if params[:guess] == @hunt.correct_answer
            redirect_to level_3_path
        end
    end

    def level_3
    end

private

    def set_hunt
        @hunt = Hunt.find(current_user.hunts.ids)
    end
end
