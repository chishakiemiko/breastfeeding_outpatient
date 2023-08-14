class AddPatientIdToMedicalTreatments < ActiveRecord::Migration[6.1]
  def change
     add_reference :medical_treatments, :patient, foreign_key: true
  end
end
