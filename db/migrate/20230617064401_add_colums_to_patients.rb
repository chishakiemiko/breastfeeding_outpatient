class AddColumsToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :patient_last_name, :string, null: false
    add_column :patients, :patient_first_name, :string, null: false
    add_column :patients, :patient_age, :integer
    add_column :patients, :patient_last_name_katakana , :string, null: false
    add_column :patients, :patient_first_name_katakana, :string, null: false
    add_column :patients, :patient_adress, :string, null: false
    add_column :patients, :patient_phone_number, :string, null: false
  end
end
