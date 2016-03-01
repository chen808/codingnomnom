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

ActiveRecord::Schema.define(version: 20160301011741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "language"
    t.string   "title"
    t.text     "step1"
    t.text     "step2"
    t.text     "step3"
    t.text     "step4"
    t.text     "step5"
    t.text     "step6"
    t.text     "step7"
    t.text     "step8"
    t.text     "step9"
    t.text     "step10"
    t.text     "step11"
    t.text     "step12"
    t.text     "step13"
    t.text     "step14"
    t.text     "step15"
    t.text     "step16"
    t.text     "step17"
    t.text     "step18"
    t.text     "step19"
    t.text     "step20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "contents", ["user_id"], name: "index_contents_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "contents", "users"
end
