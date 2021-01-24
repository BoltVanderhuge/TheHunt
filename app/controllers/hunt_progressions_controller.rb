class HuntProgressionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new
    @hunt_progression = HuntProgression.new
  end

  def create
  hunt_progression = current_user.hunt_progressions.create(hunt_id: 1)
  redirect_to level_1_path
  end


 
end
