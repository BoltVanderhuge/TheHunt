class HuntsController < ApplicationController
    before_action :set_hunt, only: [:level_1]
    def level_1

        
    end


    def level_2
        # if your progression is not huntid 1 or level 2
        #then redirected
        #else
        cookies[:key] = {
            :value => ' Good show the secret phrase to get to the next level is Marjoram ',
            :expires => 60.seconds.from_now,
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

    def level_select
        if current_user.hunts.first.id == 1
            redirect_to level_1_path
        elsif current_user.hunts.first.id == 2
            redirect_to level_2_path
        elsif current_user.hunts.first.id == 3
            redirect_to level_3_path
        end
    
    end

private

    def set_hunt
        @hunt = Hunt.find(current_user.hunts.ids)
    end
end
