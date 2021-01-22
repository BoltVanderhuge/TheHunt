class Hunt < ApplicationRecord
    has_many :hunt_progressions
    has_many :users, through: :hunt_progressions
end
