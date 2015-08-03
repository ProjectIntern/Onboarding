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

ActiveRecord::Schema.define(version: 20150731210633) do

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.string   "sender_email"
    t.string   "sender_name"
    t.string   "sender_id"
    t.string   "receiver_email"
    t.string   "receiver_name"
    t.string   "receiver_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "globals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "image"
    t.string   "position"
    t.string   "about"
  end

  create_table "hire_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "type"
    t.string   "hire_type"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_confirmation"
    t.string   "code"
    t.string   "image",                 default: "other/default.jpg"
    t.string   "facebook",              default: ""
    t.string   "linkedin",              default: ""
    t.string   "twitter",               default: ""
    t.string   "instagram",             default: ""
    t.string   "location"
    t.string   "default"
    t.string   "position"
    t.string   "about"
    t.string   "terms"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
