class HuntProgressionsController < ApplicationController
  def new
    @hunt_progression = HuntProgression.new
  end

  def create
  hunt_progression = current_user.hunt_progressions.create(hunt_id: 1)
  # redirect_to hunt_path
  end


 
end
