class MedicalTreatment < ApplicationRecord
    belongs_to :patient, optional: true
    has_one :breast_condition
end