class User < ApplicationRecord
    has_many :hunt_progressions, dependent: :destroy
    has_many :hunts, through: :hunt_progressions

    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}, presence: true
    validates :your_name, presence: true
     
end
