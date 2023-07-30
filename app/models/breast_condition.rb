class BreastCondition < ApplicationRecord
    belongs_to :patient, optional: true

    mount_uploader :udder_diagram, ImageUploader
end
