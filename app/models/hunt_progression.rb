class HuntProgression < ApplicationRecord
  belongs_to :user
  belongs_to :hunt
  validates :user_id, uniqueness: true #, message: "Only one Hunt at a time chap, don't want to tire yourself out" 
end
