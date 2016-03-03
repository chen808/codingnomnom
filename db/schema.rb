
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
