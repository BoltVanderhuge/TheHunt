class HintsController < ApplicationController
    before_action :authorized, :part_of_the_hunt, :killed_the_horse

def hint_level_1
    @hint1 = Hint.find(1).hint_text
    @h = HuntProgression.find(current_user.hunt_progressions.ids)
    @hp = @h.first
    @hp.failure
end

def hint_level_2
    @hint2 = Hint.find(2).hint_text
    @h = HuntProgression.find(current_user.hunt_progressions.ids)
    @hp = @h.first
    @hp.failure
end

def hint_level_3
    @hint3 = Hint.find(3).hint_text
    @h = HuntProgression.find(current_user.hunt_progressions.ids)
    @hp = @h.first
    @hp.failure
end

def hint_level_4
    @hint4 = Hint.find(4).hint_text
    @h = HuntProgression.find(current_user.hunt_progressions.ids)
    @hp = @h.first
    @hp.failure
end

# def hint_level_5
#     @hint4 = Hint.find(5).hint_text
#     @h = HuntProgression.find(current_user.hunt_progressions.ids)
#     @hp = @h.first
#     @hp.failure
# end


end