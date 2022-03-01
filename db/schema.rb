# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_03_01_135954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "employees"
    t.string "city"
    t.string "recruiter_message"
  end

  create_table "job_likes", force: :cascade do |t|
    t.boolean "status"
    t.bigint "user_id", null: false
    t.bigint "job_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_offer_id"], name: "index_job_likes_on_job_offer_id"
    t.index ["user_id"], name: "index_job_likes_on_user_id"
  end

  create_table "job_offers", force: :cascade do |t|
    t.text "description"
    t.text "question1"
    t.text "question2"
    t.text "question3"
    t.string "job_title"
    t.string "city"
    t.string "contracttype"
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "soft_skills"
    t.string "hard_skills"
    t.string "languages"
    t.integer "years_of_experience"
    t.string "values"
    t.index ["company_id"], name: "index_job_offers_on_company_id"
  end

  create_table "matches", force: :cascade do |t|
    t.boolean "status"
    t.text "answer1"
    t.text "answer2"
    t.text "answer3"
    t.date "callbooking"
    t.bigint "user_id", null: false
    t.bigint "job_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_offer_id"], name: "index_matches_on_job_offer_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "user_likes", force: :cascade do |t|
    t.boolean "status"
    t.bigint "user_id", null: false
    t.bigint "job_offer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_offer_id"], name: "index_user_likes_on_job_offer_id"
    t.index ["user_id"], name: "index_user_likes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "job_wanted"
    t.string "soft_skills"
    t.string "hard_skills"
    t.string "languages"
    t.integer "years_of_experience"
    t.string "values"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "job_likes", "job_offers"
  add_foreign_key "job_likes", "users"
  add_foreign_key "job_offers", "companies"
  add_foreign_key "matches", "job_offers"
  add_foreign_key "matches", "users"
  add_foreign_key "user_likes", "job_offers"
  add_foreign_key "user_likes", "users"
end
