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

ActiveRecord::Schema.define(version: 20150709213907) do

  create_table "conversations", force: :cascade do |t|
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

  add_index "conversations", ["user_id"], name: "index_conversations_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "code"
    t.string   "image",           default: "default.jpg"
    t.string   "facebook",        default: ""
    t.string   "linkedin",        default: ""
    t.string   "twitter",         default: ""
    t.string   "instagram",       default: ""
    t.string   "location"
    t.string   "default"
    t.string   "position"
    t.string   "school"
    t.string   "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
>>>>>>> 608a20b23e9015cedba57621c6e6629fc8c6e3d1
