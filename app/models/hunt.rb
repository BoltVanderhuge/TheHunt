class Hunt < ApplicationRecord
    has_many :hunt_progressions
    has_many :users, through: :hunt_progressions

    def error_messages
        messages = ["Are you having a laugh?","What are you daft", "You have chosen poorly", ""]
    end
   
end
