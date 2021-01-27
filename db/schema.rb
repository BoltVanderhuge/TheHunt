# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_26_165838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hints", force: :cascade do |t|
    t.bigint "hunt_id", null: false
    t.text "hint_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hunt_id"], name: "index_hints_on_hunt_id"
  end

  create_table "hunt_progressions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "hunt_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "horse_stamina", default: 100
    t.index ["hunt_id"], name: "index_hunt_progressions_on_hunt_id"
    t.index ["user_id"], name: "index_hunt_progressions_on_user_id"
  end

  create_table "hunts", force: :cascade do |t|
    t.integer "level"
    t.text "correct_answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "your_name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "hints", "hunts"
  add_foreign_key "hunt_progressions", "hunts"
  add_foreign_key "hunt_progressions", "users"
end
