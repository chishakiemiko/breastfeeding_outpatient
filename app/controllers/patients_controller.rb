class PatientsController < ApplicationController
  before_action :childcare_collaborator_string, only: [:create, :update] 
  before_action :infectious_disease_string, only: [:create, :update] 
  before_action :pre_existing_disease_string, only: [:create, :update] 
  before_action :pregnancy_progress_this_time_string, only: [:create, :update] 
  before_action :set_patient, only: [:show, :edit, :update]
  
  def index
    @patients = Patient.all
  end
    
  def show
  end
    
  def new
    @patient = Patient.new
  end
    
  def create
    @patient = Patient.new(patient_params) 
      if @patient.save
        redirect_to root_path, flash: {notice: "登録が完了しました."}
      else
        render :new
      end
  end

  def edit
  end
    
  def update
    if @patient.update(patient_params)
      redirect_to root_path, flash: {notice: "編集が完了しました."}
    else
      render :edit
    end
  end
  
  private
    
    
    
    def patient_params
      # params.require(:patient).permit(:patient_id_number, :patient_birth_date, :patient_occuation, :delivery_date,
      # :place_of_delivery, :mode_of_delivery, :mode_of_delivery_reasons, :calving_weeks, :calving_days, :delivery_time, :delivery_minutes, :amount_of_bleeding, :current_medication, 
      # :allergy, :delivery_history, :breast_trouble, :breast_condition_during_pregnancy, :left_right_difference_in_breast_size_before_pregnancy, :breast_changes_during_pregnancy,
      # :breast_care, :postpartum_breast_condition, :breast_engorgement, :degree_of_breast_engorgement, :breast_milk_amount_during_hospitalization, 
      # :breastfeeding_awareness, :childs_name, :gender, :birth_weight, :weight_loss_rate, :weight_at_discharge, :weight_at_one_month_checkup, :weight_at_the_three_month_checkup,
      # :weigtt_at_the_six_months_checkup, :chief_complaint, :age_in_months,
      # :stiff_shoulder, :low_back_pain, :pre_existing_disease,:progress_of_visit, :patient_last_name, :patient_first_name, :patient_adress,:patient_age,
      # :patient_last_name_katakana, :patient_first_name_katakana, :patient_phone_number, :patient_adress, 
      # childcare_collaborator: [], infectious_disease: [], pre_existing_disease: [], pregnancy_progress_this_time: [])
        params.require(:patient).permit!
    end
    
    def childcare_collaborator_string
      params[:patient][:childcare_collaborator] = params[:patient][:childcare_collaborator].join("/") 
    end
    
    def infectious_disease_string
      params[:patient][:infectious_disease] = params[:patient][:infectious_disease].join("/") 
    end
    
    def pre_existing_disease_string
      params[:patient][:pre_existing_disease] = params[:patient][:pre_existing_disease].join("/") 
    end
    
    def pregnancy_progress_this_time_string
      params[:patient][:pregnancy_progress_this_time] = params[:patient][:pregnancy_progress_this_time].join("/") 
    end
    
    def set_patient
     @patient = Patient.find(params[:id])
    end
end

