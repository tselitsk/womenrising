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

ActiveRecord::Schema.define(version: 20151204183321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mentors", force: true do |t|
    t.integer  "mentor_id"
    t.integer  "mentee_id"
    t.text     "question"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "peers", force: true do |t|
    t.integer  "peer1_id"
    t.integer  "peer2_id"
    t.integer  "peer3_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "peer4_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                       default: "",    null: false
    t.string   "encrypted_password",          default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",               default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "mentor",                      default: false
    t.string   "primary_industry"
    t.integer  "stage_of_career"
    t.string   "mentor_industry"
    t.string   "peer_industry"
    t.string   "current_goal"
    t.text     "top_3_interests",             default: [],                 array: true
    t.boolean  "live_in_detroit",             default: true
    t.boolean  "waitlist",                    default: true
    t.boolean  "is_participating_next_month", default: false
    t.boolean  "is_assigned_peer_group",      default: false
    t.integer  "mentor_times",                default: 1
    t.integer  "mentor_limit",                default: 1
    t.boolean  "is_participating_this_month"
    t.string   "gender"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
