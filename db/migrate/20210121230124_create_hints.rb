class CreateHints < ActiveRecord::Migration[6.1]
  def change
    create_table :hints do |t|
      t.belongs_to :hunt, null: false, foreign_key: true
      t.text :hint_text

      t.timestamps
    end
  end
end
