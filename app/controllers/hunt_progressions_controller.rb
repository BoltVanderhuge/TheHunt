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
  
  end

 
end
