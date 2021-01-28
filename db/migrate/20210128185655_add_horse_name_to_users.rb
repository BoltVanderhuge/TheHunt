class AddHorseNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :horse_name, :string
  end
end
