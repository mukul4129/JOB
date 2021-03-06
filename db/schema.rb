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

ActiveRecord::Schema.define(version: 2021_08_25_153328) do

  create_table "candidates", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "round_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["round_id"], name: "index_candidates_on_round_id"
    t.index ["user_id"], name: "index_candidates_on_user_id"
  end

  create_table "checkboxes", force: :cascade do |t|
    t.integer "round_id", null: false
    t.integer "sawal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["round_id"], name: "index_checkboxes_on_round_id"
    t.index ["sawal_id"], name: "index_checkboxes_on_sawal_id"
  end

  create_table "naukris", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "question"
    t.text "description"
    t.integer "marks"
    t.integer "round_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["round_id"], name: "index_questions_on_round_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "naukri_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["naukri_id"], name: "index_registrations_on_naukri_id"
    t.index ["user_id"], name: "index_registrations_on_user_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.string "name"
    t.integer "naukri_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_marks"
    t.string "option_type"
    t.integer "obtain_marks"
    t.index ["naukri_id"], name: "index_rounds_on_naukri_id"
  end

  create_table "sawals", force: :cascade do |t|
    t.string "question_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
  end

  add_foreign_key "candidates", "rounds"
  add_foreign_key "candidates", "users"
  add_foreign_key "checkboxes", "rounds"
  add_foreign_key "checkboxes", "sawals"
  add_foreign_key "questions", "rounds"
  add_foreign_key "registrations", "naukris"
  add_foreign_key "registrations", "users"
  add_foreign_key "rounds", "naukris"
end
