# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_25_151605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "q1_correct"
    t.string "q2_correct"
    t.string "q3_correct"
    t.string "q4_correct"
    t.string "q5_correct"
    t.string "q6_correct"
    t.string "q7_correct"
    t.string "q8_correct"
    t.string "q9_correct"
    t.string "q10_correct"
    t.string "q11_correct"
    t.string "q12_correct"
    t.string "q13_correct"
    t.string "q1_note"
    t.string "q2_note"
    t.string "q3_note"
    t.string "q4_note"
    t.string "q5_note"
    t.string "q6_note"
    t.string "q7_note"
    t.string "q8_note"
    t.string "q9_note"
    t.string "q10_note"
    t.string "q11_note"
    t.string "q12_note"
    t.string "q13_note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "candidate_full_name"
    t.string "ats_link"
    t.float "score"
    t.index ["user_id"], name: "index_assessments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assessments", "users"
end
