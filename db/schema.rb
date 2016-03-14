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

ActiveRecord::Schema.define(version: 20160314025514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "event_users", ["event_id"], name: "index_event_users_on_event_id", using: :btree
  add_index "event_users", ["user_id"], name: "index_event_users_on_user_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "headline"
    t.text     "description"
    t.float    "lat"
    t.float    "lng"
    t.string   "address"
    t.datetime "datetime"
    t.boolean  "is_competitive"
    t.integer  "max_seats"
    t.integer  "skill_min"
    t.integer  "skill_max"
    t.integer  "image_id"
    t.integer  "sport_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "events", ["image_id"], name: "index_events_on_image_id", using: :btree
  add_index "events", ["sport_id"], name: "index_events_on_sport_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.string   "path"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "image_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sports", ["image_id"], name: "index_sports_on_image_id", using: :btree

  create_table "user_preferences", force: :cascade do |t|
    t.integer  "skill_level"
    t.text     "notes"
    t.integer  "user_id"
    t.integer  "sport_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_preferences", ["sport_id"], name: "index_user_preferences_on_sport_id", using: :btree
  add_index "user_preferences", ["user_id"], name: "index_user_preferences_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.float    "lat"
    t.float    "lng"
    t.integer  "search_range"
    t.text     "bio"
    t.date     "birth_date"
    t.string   "gender"
    t.integer  "image_id"
    t.string   "last_name"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["image_id"], name: "index_users_on_image_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "event_users", "events"
  add_foreign_key "event_users", "users"
  add_foreign_key "events", "images"
  add_foreign_key "events", "sports"
  add_foreign_key "events", "users"
  add_foreign_key "sports", "images"
  add_foreign_key "user_preferences", "sports"
  add_foreign_key "user_preferences", "users"
  add_foreign_key "users", "images"
end
