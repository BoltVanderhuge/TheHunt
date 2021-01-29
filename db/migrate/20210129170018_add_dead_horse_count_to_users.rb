class AddDeadHorseCountToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :dead_horse_count, :integer, :default => 0
  end
end
