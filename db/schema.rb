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

ActiveRecord::Schema.define(version: 20160717091518) do

  create_table "cards", force: :cascade do |t|
    t.string   "team_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "away_team",  limit: 255
  end

  create_table "gradings", force: :cascade do |t|
    t.string   "user_id",    limit: 255
    t.string   "player_id",  limit: 255
    t.string   "grading",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.string   "team_id",          limit: 255
    t.integer  "number",           limit: 4
    t.string   "first_name",       limit: 255
    t.string   "last_name",        limit: 255
    t.string   "first_name_kana",  limit: 255
    t.string   "last_name_kana",   limit: 255
    t.text     "image_url",        limit: 65535
    t.string   "position",         limit: 255
    t.integer  "age",              limit: 4
    t.string   "birth_year",       limit: 255
    t.string   "birth_month",      limit: 255
    t.string   "birth_day",        limit: 255
    t.string   "from",             limit: 255
    t.integer  "tall",             limit: 4
    t.integer  "weight",           limit: 4
    t.text     "history",          limit: 65535
    t.text     "blog_url",         limit: 65535
    t.text     "twitter_url",      limit: 65535
    t.text     "insta_url",        limit: 65535
    t.integer  "goal",             limit: 4
    t.integer  "asist",            limit: 4
    t.integer  "mgp",              limit: 4
    t.integer  "recently_average", limit: 4
    t.integer  "total_average",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scrapings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "category",   limit: 255
    t.string   "name",       limit: 255
    t.string   "v_point",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
