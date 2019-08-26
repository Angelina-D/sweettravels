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

ActiveRecord::Schema.define(version: 2019_08_26_144634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "cause"
    t.string "picture"
    t.text "description"
  end

  create_table "offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.date "start_date"
    t.date "end_date"
    t.string "pick_up_location"
    t.integer "status"
    t.bigint "users_id"
    t.bigint "requests_id"
    t.index ["requests_id"], name: "index_offers_on_requests_id"
    t.index ["users_id"], name: "index_offers_on_users_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.bigint "charities_id"
    t.integer "price_cents"
    t.integer "donation_cents"
    t.integer "quantity"
    t.bigint "users_id"
    t.bigint "sweets_id"
    t.index ["charities_id"], name: "index_requests_on_charities_id"
    t.index ["sweets_id"], name: "index_requests_on_sweets_id"
    t.index ["users_id"], name: "index_requests_on_users_id"
  end

  create_table "sweets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "country"
    t.text "description"
    t.string "category"
    t.string "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "offers", "requests", column: "requests_id"
  add_foreign_key "offers", "users", column: "users_id"
  add_foreign_key "requests", "charities", column: "charities_id"
  add_foreign_key "requests", "sweets", column: "sweets_id"
  add_foreign_key "requests", "users", column: "users_id"
end
