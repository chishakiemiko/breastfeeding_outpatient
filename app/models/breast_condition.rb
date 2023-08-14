class BreastCondition < ApplicationRecord

    belongs_to :patient, optional: true
    has_one :medical_condition

    mount_uploader :udder_diagram, ImageUploader

end
