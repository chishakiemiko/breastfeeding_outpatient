class Patient < ApplicationRecord
    belongs_to :hospital
    
    validates :patient_id_number, :patient_birth_date, :patient_last_name,
    :patient_first_name, :patient_age, :patient_last_name_katakana, :patient_first_name_katakana, 
    :patient_adress, :patient_phone_number, presence: true
    
    validates :childcare_collaborator, :pregnancy_progress_this_time, 
    :pre_existing_disease, :infectious_disease, acceptance: false

    validates_format_of :patient_first_name, with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/ 
    validates_format_of :patient_last_name, with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
    validates_format_of :patient_id_number, with: /\A[0-9]+\z/
    validates_format_of :patient_first_name_katakana, with: /\A[ァ-ヶー－]+\z/ 
    validates_format_of :patient_last_name_katakana, with: /\A[ァ-ヶー－]+\z/
    validates_format_of :patient_phone_number, with: /\A\d{10,11}\z/
    
end
