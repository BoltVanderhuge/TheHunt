class HuntsController < ApplicationController
    # before_action :set_hunt, only: [:level_1]
    before_action :authorized, :part_of_the_hunt, :killed_the_horse

    def level_1
        if current_user.hunt_progressions.sort.last.hunt_id != 1
            redirect_to current_level_path
        end
    end


    def level_2
      
        if current_user.hunt_progressions.sort.last.hunt_id != 2
            redirect_to current_level_path
        else
            cookies[:key] = {
                :value => ' Good show the secret phrase to get to the next level is Marjoram ',
                :expires => 30.seconds.from_now,
            }
            @hunt = Hunt.find(current_user.hunt_progressions.sort.last.hunt_id)
            @hp = HuntProgression.find(current_user.hunt_progressions.sort.last.id)
            if params[:guess].present? && (params[:guess]) == (@hunt.correct_answer)
                @hp.update(hunt_id: 3)
                redirect_to level_3_path
            elsif params[:guess].present? && (params[:guess]) != (@hunt.correct_answer)
                @hp.failure
                @error = @hunt.error_messages
            end
        end
    end
   
    def level_3
        if current_user.hunt_progressions.sort.last.hunt_id != 3
            redirect_to current_level_path
        end
        @hunt = Hunt.find(current_user.hunt_progressions.sort.last.hunt_id)
        @hp = HuntProgression.find(current_user.hunt_progressions.sort.last.id)
        if params[:guess].present? && (params[:guess]) == (@hunt.correct_answer)
            @hp.update(hunt_id: 4)
            redirect_to level_4_path
        elsif params[:guess].present? && (params[:guess]) != (@hunt.correct_answer)
            @hp.failure
            @error = @hunt.error_messages
        end
    end

    def level_4
        if current_user.hunt_progressions.sort.last.hunt_id != 4
            redirect_to current_level_path
        end
    end

    def level_5
        if current_user.hunt_progressions.sort.last.hunt_id != 5
            redirect_to current_level_path
        end
        @hunt = Hunt.find(current_user.hunt_progressions.sort.last.hunt_id)
        @hp = HuntProgression.find(current_user.hunt_progressions.sort.last.id)
        
        if params[:guess].present? && (["#{@hunt.correct_answer}","five"].include? (params[:guess]).downcase)
            @hp.update(hunt_id: 6)
            redirect_to level_6_path
        elsif params[:guess].present? && (params[:guess]) != (@hunt.correct_answer)
            @hp.failure
            @error = @hunt.error_messages
        end
    end

    def level_6
        if current_user.hunt_progressions.sort.last.hunt_id != 6
            redirect_to current_level_path
        end
        @hunt = Hunt.find(current_user.hunt_progressions.sort.last.hunt_id)
        @hp = HuntProgression.find(current_user.hunt_progressions.sort.last.id)
        if params[:guess].present? && (params[:guess]) == (@hunt.correct_answer)
            @hp.update(hunt_id: 7)
            redirect_to level_7_path
        elsif params[:guess].present? && (params[:guess]) != (@hunt.correct_answer)
            @hp.failure
            @error = @hunt.error_messages
        end
    end

    def level_7
        if current_user.hunt_progressions.sort.last.hunt_id !=7
            redirect_to current_level_path
        end
        @hunt = Hunt.find(current_user.hunt_progressions.sort.last.hunt_id)
        @hp = HuntProgression.find(current_user.hunt_progressions.sort.last.id)
        if params[:guess].present? && (params[:guess]) == (@hunt.correct_answer)
            @hp.update(hunt_id: 8)
            redirect_to win_screen_path
        elsif params[:guess].present? && (params[:guess]) != (@hunt.correct_answer)
            @hp.failure
            @error = @hunt.error_messages
        end
        
    end

    def win
        if current_user.hunt_progressions.sort.last.hunt_id !=8
            redirect_to current_level_path
        end
    end


    def level_select
        if current_user.hunt_progressions.sort.last.hunt_id == 1
            redirect_to level_1_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 2
            redirect_to level_2_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 3
            redirect_to level_3_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 4
            redirect_to level_4_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 5
            redirect_to level_5_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 6
            redirect_to level_6_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 7
            redirect_to level_7_path
        elsif current_user.hunt_progressions.sort.last.hunt_id == 8
            redirect_to win_screen_path
        end
    end

    def rotunda
        current_user.hunt_progressions.sort.last.update(hunt_id: 2)
        redirect_to level_2_path
    end

    def rotunda4
        current_user.hunt_progressions.sort.last.update(hunt_id: 5)
        redirect_to level_5_path
    end

    


end