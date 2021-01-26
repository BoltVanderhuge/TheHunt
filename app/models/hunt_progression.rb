class HuntProgression < ApplicationRecord
  belongs_to :user
  belongs_to :hunt
  validates :user_id, uniqueness: true #, message: "Only one Hunt at a time chap, don't want to tire yourself out" 

  def check_for_dead_horse
    self.horse_stamina <= 0 
  end

  def failure
    self.horse_stamina -= 10
    self.save
  end

# scores []
#dead add score to the array 
#the end add to the array

def score

end

def scores

end

end
