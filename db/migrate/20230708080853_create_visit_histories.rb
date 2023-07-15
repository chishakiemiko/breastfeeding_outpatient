class CreateVisitHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :visit_histories do |t|
      t.date :visit_on
      t.references :patient, foreign_key: true
      
      t.timestamps
    end
  end
end
