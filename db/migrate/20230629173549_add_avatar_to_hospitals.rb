class AddAvatarToHospitals < ActiveRecord::Migration[6.1]
  def change
    add_column :hospitals, :avatar, :string
  end
end
