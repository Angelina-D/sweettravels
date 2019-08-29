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

ActiveRecord::Schema.define(version: 2019_08_28_154252) do

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
    t.integer "status", default: 1
    t.bigint "user_id"
    t.bigint "request_id"
    t.index ["request_id"], name: "index_offers_on_request_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "price_cents"
    t.integer "donation_cents"
    t.integer "quantity"
    t.bigint "charity_id"
    t.bigint "user_id"
    t.bigint "sweet_id"
    t.index ["charity_id"], name: "index_requests_on_charity_id"
    t.index ["sweet_id"], name: "index_requests_on_sweet_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "sweets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "country"
    t.text "description"
    t.string "category"
    t.string "picture"
    t.float "latitude"
    t.float "longitude"
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
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "offers", "requests"
  add_foreign_key "offers", "users"
  add_foreign_key "requests", "charities"
  add_foreign_key "requests", "sweets"
  add_foreign_key "requests", "users"
end
