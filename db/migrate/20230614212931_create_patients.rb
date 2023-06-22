class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.integer :patient_id_number, null: false
      t.date :patient_birth_date, null: false
      t.string :patient_occuation 
      t.text :childcare_collaborator 
      t.date :delivery_date 
      t.string :place_of_delivery
      t.string :mode_of_delivery
      t.string :mode_of_delivery_reasons 
      t.integer :calving_weeks 
      t.integer :calving_days 
      t.integer :delivery_time 
      t.integer :delivery_minutes 
      t.integer :amount_of_bleeding 
      t.text :pregnancy_progress_this_time 
      t.string :current_medication
      t.string :allergy 
      t.string :delivery_history 
      t.string :breast_trouble
      t.string :breast_condition_during_pregnancy 
      t.string :left_right_difference_in_breast_size_before_pregnancy 
      t.string :breast_changes_during_pregnancy 
      t.string :breast_care 
      t.string :postpartum_breast_condition 
      t.string :breast_engorgement
      t.string :degree_of_breast_engorgement 
      t.integer :breast_milk_amount_during_hospitalization
      t.string :breastfeeding_awareness
      t.string :childs_name 
      t.string :gender 
      t.integer :birth_weight 
      t.integer :weight_loss_rate 
      t.integer :weight_at_discharge
      t.integer :weight_at_one_month_checkup 
      t.integer :weight_at_the_three_month_checkup 
      t.integer :weigtt_at_the_six_months_checkup 
      t.string :chief_complaint
      t.integer :age_in_months
      t.string :stiff_shoulder
      t.string :low_back_pain
      t.text :pre_existing_disease
      t.text :infectious_disease
      t.text :progress_of_visit
      
      t.timestamps
      
    end
  end
end
