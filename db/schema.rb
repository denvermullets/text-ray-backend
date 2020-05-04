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

ActiveRecord::Schema.define(version: 2020_05_04_183648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "letters"
  end

  create_table "gameusers", force: :cascade do |t|
    t.integer "score"
    t.bigint "users_id"
    t.bigint "games_id"
    t.index ["games_id"], name: "index_gameusers_on_games_id"
    t.index ["users_id"], name: "index_gameusers_on_users_id"
  end

  create_table "gamewords", force: :cascade do |t|
    t.bigint "games_id"
    t.bigint "words_id"
    t.index ["games_id"], name: "index_gamewords_on_games_id"
    t.index ["words_id"], name: "index_gamewords_on_words_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  create_table "words", force: :cascade do |t|
    t.integer "point_value"
    t.string "word"
  end

end
