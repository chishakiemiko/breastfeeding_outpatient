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

ActiveRecord::Schema.define(version: 2023_07_08_080853) do

  create_table "patients", charset: "utf8mb4", force: :cascade do |t|
    t.integer "patient_id_number", null: false
    t.date "patient_birth_date", null: false
    t.string "patient_occuation"
    t.text "childcare_collaborator"
    t.date "delivery_date"
    t.string "place_of_delivery"
    t.string "mode_of_delivery"
    t.string "mode_of_delivery_reasons"
    t.integer "calving_weeks"
    t.integer "calving_days"
    t.integer "delivery_time"
    t.integer "delivery_minutes"
    t.integer "amount_of_bleeding"
    t.text "pregnancy_progress_this_time"
    t.string "current_medication"
    t.string "allergy"
    t.string "delivery_history"
    t.string "breast_trouble"
    t.string "left_right_difference_in_breast_size_before_pregnancy"
    t.string "breast_changes_during_pregnancy"
    t.string "breast_care"
    t.string "postpartum_breast_condition"
    t.string "breast_engorgement"
    t.string "degree_of_breast_engorgement"
    t.integer "breast_milk_amount_during_hospitalization"
    t.string "breastfeeding_awareness"
    t.string "childs_name"
    t.string "gender"
    t.integer "birth_weight"
    t.integer "weight_loss_rate"
    t.integer "weight_at_discharge"
    t.integer "weight_at_one_month_checkup"
    t.integer "weight_at_the_three_month_checkup"
    t.integer "weigtt_at_the_six_months_checkup"
    t.string "stiff_shoulder"
    t.string "low_back_pain"
    t.text "pre_existing_disease"
    t.text "infectious_disease"
    t.text "progress_of_visit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "patient_last_name", null: false
    t.string "patient_first_name", null: false
    t.integer "patient_age"
    t.string "patient_last_name_katakana", null: false
    t.string "patient_first_name_katakana", null: false
    t.string "patient_adress", null: false
    t.string "patient_phone_number", null: false
  end

  create_table "visit_histories", charset: "utf8mb4", force: :cascade do |t|
    t.date "visit_on"
    t.bigint "patient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_visit_histories_on_patient_id"
  end

  add_foreign_key "visit_histories", "patients"
end
