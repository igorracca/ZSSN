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

ActiveRecord::Schema.define(version: 20160821215608) do

  create_table "flags", force: :cascade do |t|
    t.string   "informer"
    t.string   "infected"
    t.integer  "survivor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "flags", ["survivor_id"], name: "index_flags_on_survivor_id"

  create_table "survivors", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.integer  "latitude"
    t.integer  "longitude"
    t.integer  "water"
    t.integer  "food"
    t.integer  "medication"
    t.integer  "ammunition"
    t.boolean  "infected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trades", force: :cascade do |t|
    t.integer  "id1"
    t.integer  "w1"
    t.integer  "f1"
    t.integer  "m1"
    t.integer  "a1"
    t.integer  "id2"
    t.integer  "w2"
    t.integer  "f2"
    t.integer  "m2"
    t.integer  "a2"
    t.integer  "survivor_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "trades", ["survivor_id"], name: "index_trades_on_survivor_id"

end
