class RemoveToColumnsToPatients < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :breast_condition_during_pregnancy, :string
    remove_column :patients, :chief_complaint, :string
    remove_column :patients, :age_in_months, :integer
  end
end
