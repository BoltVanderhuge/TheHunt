class Hunt < ApplicationRecord
    has_many :hunt_progressions
    has_many :users, through: :hunt_progressions

    def error_messages
        messages = ["Are you having a laugh?","What are you daft", "You have chosen poorly", "That'll never work", "You must have mispoken", "I wasn't aware dullards would be joing us", "Have you been struck in the head recently?", "You are completely gormless", "You've lost the plot", "That idea is positively barmy"]
        messages.sample
    end
   
end
