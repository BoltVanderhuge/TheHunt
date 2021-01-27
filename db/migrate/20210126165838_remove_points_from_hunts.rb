class RemovePointsFromHunts < ActiveRecord::Migration[6.1]
  def change
    remove_column :hunts, :points, :integer
  end
end
