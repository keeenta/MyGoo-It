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

ActiveRecord::Schema.define(version: 20160206042131) do

  create_table "gs", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.date     "bath_date"
    t.string   "username"
    t.text     "introduction"
    t.integer  "gender"
    t.binary   "profile_img"
    t.string   "job"
    t.string   "area"
    t.string   "hobby"
    t.integer  "alcohol_strenth"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "gs", ["email"], name: "index_gs_on_email", unique: true
  add_index "gs", ["reset_password_token"], name: "index_gs_on_reset_password_token", unique: true

  create_table "izakaya_profiles", force: :cascade do |t|
    t.string   "izakaya_id"
    t.time     "open_time"
    t.string   "close_time"
    t.binary   "image"
    t.integer  "phone"
    t.text     "menus"
    t.text     "access"
    t.string   "place"
    t.integer  "cigaret"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "introduction"
    t.text     "genre"
  end

  create_table "posts", force: :cascade do |t|
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "inzakaya_id"
    t.time     "open_time"
    t.time     "close_time"
    t.binary   "image"
    t.integer  "phone"
    t.text     "menus"
    t.text     "access"
    t.string   "place"
    t.integer  "cigrat"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.date     "birth_date"
    t.string   "username"
    t.text     "introduction"
    t.integer  "gender"
    t.binary   "profile_img"
    t.string   "job"
    t.string   "area"
    t.string   "hobby"
    t.integer  "alcohol_strength"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
