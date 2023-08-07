class MedicalTreatment < ApplicationRecord
    belongs_to :hospital
    has_one :breast_condition
end
