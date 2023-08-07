class CreateMedicalTreatments < ActiveRecord::Migration[6.1]
  def change
    create_table :medical_treatments do |t|
      t.string :problem_list_1
      t.string :problem_list_2
      t.string :problem_list_3
      t.string :problem_list_4
      t.string :problem_list_5
      t.string :problem_list_6
      t.string :problem_list_7
      t.string :root_problem
      t.string :diagnosis_name
      t.text :right_breast_condition
      t.text :left_breast_condition
      t.string :right_breast_lump
      t.string :foot_bath 
      t.string :shoulder_and_back_acupressure 
      t.string :breast_massage
      t.string :breast_feeding
      t.string :necessity_of_protector
      t.string :right_massage_method 
      t.string :left_massage_method 
      t.string :three_determining_factors_manipulation
      t.string :three_determining_factors_pressure
      t.string :three_determining_factors_duration_of_action 
      t.text :right_todays_massage_result
      t.text :left_todays_massage_result
      t.text :assessment_at_initial_visit
      t.text :derection
      t.text :plan_for_next_visit
      t.string :guidance_1
      t.string :guidance_2
      t.string :guidance_3
      t.string :guidance_4
      t.string :guidance_5
      t.string :next_back_to_the_hospital_day
      
      t.timestamps
    end
  end
end
