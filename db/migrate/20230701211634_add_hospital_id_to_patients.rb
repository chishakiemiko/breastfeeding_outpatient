class AddHospitalIdToPatients < ActiveRecord::Migration[6.1]
  def change
    add_reference :patients, :hospital
  end
end
