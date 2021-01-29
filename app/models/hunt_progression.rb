class HuntProgression < ApplicationRecord
  belongs_to :user
  belongs_to :hunt
  
  def check_for_dead_horse
    self.horse_stamina <= 0 
  end

  def failure
    self.horse_stamina -= 10
    self.save
  end




end
