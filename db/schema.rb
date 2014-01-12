# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140111192208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "episodes", force: true do |t|
    t.integer  "season_id"
    t.string   "title"
    t.string   "description"
    t.integer  "series_sequence"
    t.integer  "season_sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "episodes", ["season_id"], name: "index_episodes_on_season_id", using: :btree

  create_table "seasons", force: true do |t|
    t.integer  "series_id"
    t.string   "description"
    t.integer  "season_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seasons", ["series_id"], name: "index_seasons_on_series_id", using: :btree

  create_table "series", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "series_sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end