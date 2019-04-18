# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_15_203213) do

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "destination_type"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "limitations", force: :cascade do |t|
    t.integer "time_limit"
    t.float "cost"
    t.string "sweep_day"
    t.boolean "handicap_accessible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_limitations", force: :cascade do |t|
    t.integer "parking_location_id"
    t.integer "limitation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["limitation_id"], name: "index_location_limitations_on_limitation_id"
    t.index ["parking_location_id"], name: "index_location_limitations_on_parking_location_id"
  end

  create_table "parking_events", force: :cascade do |t|
    t.string "day"
    t.time "time"
    t.integer "user_id"
    t.integer "destination_id"
    t.integer "parking_location_id"
    t.integer "ease_rating"
    t.integer "safety_rating"
    t.float "time_spent"
    t.integer "walkability_rating"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_parking_events_on_destination_id"
    t.index ["parking_location_id"], name: "index_parking_events_on_parking_location_id"
    t.index ["user_id"], name: "index_parking_events_on_user_id"
  end

  create_table "parking_locations", force: :cascade do |t|
    t.string "name"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
