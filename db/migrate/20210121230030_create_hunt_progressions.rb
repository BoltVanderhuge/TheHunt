class CreateHuntProgressions < ActiveRecord::Migration[6.1]
  def change
    create_table :hunt_progressions do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :hunt, null: false, foreign_key: true

      t.timestamps
    end
  end
end
