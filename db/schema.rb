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

ActiveRecord::Schema.define(version: 20160315014800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "content2s", force: :cascade do |t|
    t.integer  "content_id"
    t.string   "video_link"
    t.text     "extra_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "content2s", ["content_id"], name: "index_content2s_on_content_id", using: :btree

  create_table "contents", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "language_id"
    t.string   "title"
    t.text     "description"
    t.string   "step1"
    t.string   "step2"
    t.string   "step3"
    t.string   "step4"
    t.string   "step5"
    t.string   "step6"
    t.string   "step7"
    t.string   "step8"
    t.string   "step9"
    t.string   "step10"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "contents", ["user_id"], name: "index_contents_on_user_id", using: :btree

  create_table "languages", force: :cascade do |t|
    t.string   "lang"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "content_id"
    t.integer  "count_content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "likes", ["content_id"], name: "index_likes_on_content_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "content2s", "contents"
  add_foreign_key "contents", "users"
  add_foreign_key "likes", "contents"
end
