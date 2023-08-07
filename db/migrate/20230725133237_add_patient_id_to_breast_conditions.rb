class AddPatientIdToBreastConditions < ActiveRecord::Migration[6.1]
  def change
    add_reference :breast_conditions, :patient, foreign_key: true
  end
end
