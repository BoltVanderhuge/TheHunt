class HuntProgressionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    @hunt_progression = HuntProgression.new
  end

  def create
    hunt_progression = current_user.hunt_progressions.create(hunt_id: 1)
    redirect_to level_1_path
  end

  def check_dead_horse
   if self.check_for_dead_horse
    redirect_to dead_horse_path
   end
  end


  def dead_horse
    current_user.update(dead_horse_count: (current_user.dead_horse_count + 1))
    dead_horse_number = current_user.dead_horse_count
    @fullname = current_user.horse_name + " " + ((dead_horse_number).to_roman)
  end

 
 
end
