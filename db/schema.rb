# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_02_201633) do

  create_table "game_sessions", force: :cascade do |t|
    t.integer "game_table_id"
    t.integer "game_id"
    t.string "session_name"
    t.integer "player_counter"
    t.date "date"
    t.time "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_sessions_players", id: false, force: :cascade do |t|
    t.integer "game_session_id"
    t.integer "player_id"
    t.index ["game_session_id"], name: "index_game_sessions_players_on_game_session_id"
    t.index ["player_id"], name: "index_game_sessions_players_on_player_id"
  end

  create_table "game_tables", force: :cascade do |t|
    t.integer "store_id"
    t.string "table_name"
    t.integer "seats_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "store_id"
    t.string "name"
    t.string "description"
    t.integer "min_players"
    t.integer "max_players"
    t.integer "min_playtime"
    t.integer "max_playtime"
    t.string "link_url"
    t.string "photo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "password_digest"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
