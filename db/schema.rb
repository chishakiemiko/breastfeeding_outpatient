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

ActiveRecord::Schema.define(version: 2023_07_25_133237) do

  create_table "breast_conditions", charset: "utf8mb4", force: :cascade do |t|
    t.text "chief_complaint", null: false
    t.text "progress_of_visit", null: false
    t.string "breast_type"
    t.string "udder_warmth_right"
    t.string "udder_warmth_left"
    t.string "breast_size_difference"
    t.string "udder_tension_right"
    t.string "udder_tension_left"
    t.string "sub_breast_right"
    t.string "sub_breast_left"
    t.float "right_body_temperature_before_massage"
    t.float "right_body_temperature_after_massage"
    t.float "left_body_temperature_before_massage"
    t.float "left_body_temperature_after_massage"
    t.float "extension_length_before_massage_right"
    t.float "extension_length_before_massage_left"
    t.float "extension_length_after_massage_right"
    t.float "extension_length_after_massage_left"
    t.string "breast_extension_right_before_massage"
    t.string "breast_extension_right_after_massage"
    t.string "breast_extension_left_before_massage"
    t.string "breast_extension_left_after_massage"
    t.string "nipple_color_right"
    t.string "nipple_color_left"
    t.float "nipple_width_right"
    t.float "nipple_width_left"
    t.float "nipple_warp_right"
    t.float "nipple_warp_left"
    t.string "breast_skin_problems_right"
    t.string "breast_skin_problems_left"
    t.string "nipple_shape_right"
    t.string "nipple_shape_left"
    t.float "length_of_right_teat"
    t.float "length_of_left_teat"
    t.string "hardness_of_right_teat"
    t.string "hardness_of_left_teat"
    t.integer "number_of_right_teat_ducts_open_before_massage"
    t.integer "number_of_right_teat_ducts_open_after_massage"
    t.integer "number_of_left_teat_ducts_open_before_massage"
    t.integer "number_of_left_teat_ducts_open_after_massage"
    t.integer "number_of_open_right_milk_ducts_before_massage"
    t.integer "number_of_open_right_milk_ducts_after_massage"
    t.integer "number_of_open_left_milk_ducts_before_massage"
    t.integer "number_of_open_left_milk_ducts_after_massage"
    t.integer "number_of_ejaculation_breasts_right_before_massage"
    t.integer "number_of_ejaculation_breasts_left_before_massage"
    t.integer "number_of_ejaculated_right_breast_after_massage"
    t.integer "number_of_ejaculated_left_breast_after_massage"
    t.string "milk_color_of_right_udder"
    t.string "milk_color_of_left_udder"
    t.string "right_milk_debris"
    t.string "left_milk_debris"
    t.string "right_milk_temperature"
    t.string "left_milk_temperature"
    t.string "breastfeeding_status"
    t.integer "breastfeeding_times"
    t.integer "milk_count"
    t.integer "one_serving_of_milk"
    t.text "time_to_supplement_milk"
    t.string "baby_food"
    t.text "breastfeeding_posture_right"
    t.text "breastfeeding_posture_left"
    t.integer "todays_child_weigth"
    t.integer "weight_gain_previous_comparison"
    t.integer "weight_gain_compared_to_birth"
    t.string "right_milk_properties"
    t.string "left_milk_properties"
    t.integer "number_of_night_feedings"
    t.integer "milking_frequency"
    t.integer "one_milking_dose"
    t.string "milking_time_required"
    t.text "milking_method"
    t.string "udder_diagram"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_breast_conditions_on_patient_id"
  end

  create_table "hospitals", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username", null: false
    t.string "avatar"
    t.index ["email"], name: "index_hospitals_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hospitals_on_reset_password_token", unique: true
  end

  create_table "medical_treatments", charset: "utf8mb4", force: :cascade do |t|
    t.string "problem_list_1"
    t.string "problem_list_2"
    t.string "problem_list_3"
    t.string "problem_list_4"
    t.string "problem_list_5"
    t.string "problem_list_6"
    t.string "problem_list_7"
    t.string "root_problem"
    t.string "diagnosis_name"
    t.text "right_breast_condition"
    t.text "left_breast_condition"
    t.string "right_breast_lump"
    t.string "foot_bath"
    t.string "shoulder_and_back_acupressure"
    t.string "breast_massage"
    t.string "breast_feeding"
    t.string "necessity_of_protector"
    t.string "right_massage_method"
    t.string "left_massage_method"
    t.string "three_determining_factors_manipulation"
    t.string "three_determining_factors_pressure"
    t.string "three_determining_factors_duration_of_action"
    t.text "right_todays_massage_result"
    t.text "left_todays_massage_result"
    t.text "assessment_at_initial_visit"
    t.text "derection"
    t.text "plan_for_next_visit"
    t.string "guidance_1"
    t.string "guidance_2"
    t.string "guidance_3"
    t.string "guidance_4"
    t.string "guidance_5"
    t.string "next_back_to_the_hospital_day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

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
    t.bigint "hospital_id"
    t.index ["hospital_id"], name: "index_patients_on_hospital_id"
  end

  add_foreign_key "breast_conditions", "patients"
end
