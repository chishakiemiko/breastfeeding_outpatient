class AddUserNameToHospitals < ActiveRecord::Migration[6.1]
  def change
    add_column :hospitals, :username, :string, null: false
  end
end
