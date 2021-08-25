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

ActiveRecord::Schema.define(version: 2021_08_24_135536) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "date"
    t.boolean "documents_uploaded"
    t.bigint "user_id", null: false
    t.bigint "registration_office_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["registration_office_id"], name: "index_appointments_on_registration_office_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "english_customer_support"
    t.integer "signup_process"
    t.integer "bank_fees"
    t.integer "atm_fees"
    t.integer "banking_features"
    t.text "summary"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "name"
    t.boolean "private"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "summary"
  end

  create_table "registration_offices", force: :cascade do |t|
    t.string "office_name"
    t.string "address"
    t.string "opening_hours"
    t.string "closing_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_choices", force: :cascade do |t|
    t.bigint "bank_id", null: false
    t.bigint "insurance_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["bank_id"], name: "index_user_choices_on_bank_id"
    t.index ["insurance_id"], name: "index_user_choices_on_insurance_id"
    t.index ["user_id"], name: "index_user_choices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "way_answers", force: :cascade do |t|
    t.string "employment_status"
    t.string "income_range"
    t.datetime "arrival_date"
    t.string "address"
    t.string "phone_number"
    t.datetime "date_of_birth"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_way_answers_on_user_id"
  end

  add_foreign_key "appointments", "registration_offices"
  add_foreign_key "appointments", "users"
  add_foreign_key "user_choices", "banks"
  add_foreign_key "user_choices", "insurances"
  add_foreign_key "user_choices", "users"
  add_foreign_key "way_answers", "users"
end
