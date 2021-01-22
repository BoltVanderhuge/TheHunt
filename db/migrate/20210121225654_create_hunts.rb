class CreateHunts < ActiveRecord::Migration[6.1]
  def change
    create_table :hunts do |t|
      t.integer :level
      t.text :correct_answer
      t.integer :points

      t.timestamps
    end
  end
end
