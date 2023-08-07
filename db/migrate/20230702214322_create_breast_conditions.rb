class CreateBreastConditions < ActiveRecord::Migration[6.1]
  def change
    create_table :breast_conditions do |t|
      t.text :chief_complaint, null:false
      t.text :progress_of_visit, null:false
      t.string :breast_type
      t.string :udder_warmth_right
      t.string :udder_warmth_left
      t.string :breast_size_difference
      t.string :udder_tension_right
      t.string :udder_tension_left
      t.string :sub_breast_right
      t.string :sub_breast_left
      t.integer :right_body_temperature_before_massage
      t.integer :right_body_temperature_after_massage
      t.integer :left_body_temperature_before_massage
      t.integer :left_body_temperature_after_massage
      t.integer :extension_length_before_massage_right
      t.integer :extension_length_before_massage_left
      t.integer :extension_length_after_massage_right
      t.integer :extension_length_after_massage_left
      t.string :breast_extension_right_before_massage
      t.string :breast_extension_right_after_massage
      t.string :breast_extension_left_before_massage
      t.string :breast_extension_left_after_massage
      t.string :nipple_color_right
      t.string :nipple_color_left
      t.integer :nipple_width_right
      t.integer :nipple_width_left
      t.integer :nipple_warp_right
      t.integer :nipple_warp_left
      t.string :breast_skin_problems_right
      t.string :breast_skin_problems_left
      t.string :nipple_shape_right
      t.string :nipple_shape_left
      t.integer :length_of_right_teat
      t.integer :length_of_left_teat
      t.string :hardness_of_right_teat
      t.string :hardness_of_left_teat
      t.integer :number_of_right_teat_ducts_open_before_massage
      t.integer :number_of_right_teat_ducts_open_after_massage
      t.integer :number_of_left_teat_ducts_open_before_massage
      t.integer :number_of_left_teat_ducts_open_after_massage
      t.integer :number_of_open_right_milk_ducts_before_massage
      t.integer :number_of_open_right_milk_ducts_after_massage
      t.integer :number_of_open_left_milk_ducts_before_massage
      t.integer :number_of_open_left_milk_ducts_after_massage
      t.integer :number_of_ejaculation_breasts_right_before_massage
      t.integer :number_of_ejaculation_breasts_left_before_massage
      t.integer :number_of_ejaculated_right_breast_after_massage
      t.integer :number_of_ejaculated_left_breast_after_massage
      t.string :milk_color_of_right_udder
      t.string :milk_color_of_left_udder
      t.string :right_milk_debris
      t.string :left_milk_debris
      t.string :right_milk_temperature
      t.string :left_milk_temperature
      t.string :breastfeeding_status
      t.integer :breastfeeding_times
      t.integer :milk_count
      t.integer :one_serving_of_milk
      t.text :time_to_supplement_milk
      t.string :baby_food
      t.text :breastfeeding_posture_right
      t.text :breastfeeding_posture_left
      t.integer :todays_child_weigth
      t.integer :weight_gain_previous_comparison
      t.integer :weight_gain_compared_to_birth
      t.string :right_milk_properties
      t.string :left_milk_properties
      t.integer :number_of_night_feedings
      t.integer :milking_frequency
      t.integer :one_milking_dose
      t.string :milking_time_required
      t.text :milking_method
      
      t.string :udder_diagram 
      t.timestamps
    end
  end
end
