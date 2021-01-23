class AddHorseStaminaToHuntProgressions < ActiveRecord::Migration[6.1]
  def change
    add_column :hunt_progressions, :horse_stamina, :integer, :default => 100
  end
end
