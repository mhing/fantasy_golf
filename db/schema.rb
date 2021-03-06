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

ActiveRecord::Schema.define(version: 20160109225109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "golfers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historical_performances", force: :cascade do |t|
    t.integer  "place"
    t.decimal  "winnings"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "date"
  end

  create_table "picks", force: :cascade do |t|
    t.integer  "golfer_id"
    t.integer  "tournament_id"
    t.decimal  "winnings"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "date"
    t.boolean  "backup"
  end

  add_index "picks", ["golfer_id"], name: "index_picks_on_golfer_id", using: :btree
  add_index "picks", ["tournament_id"], name: "index_picks_on_tournament_id", using: :btree

  create_table "tournaments", force: :cascade do |t|
    t.string   "name"
    t.boolean  "major"
    t.boolean  "fedex_playoff"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "active",        default: true
  end

  add_foreign_key "picks", "golfers"
  add_foreign_key "picks", "tournaments"
end
