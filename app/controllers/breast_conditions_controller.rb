class BreastConditionsController < ApplicationController
  before_action :time_to_supplement_milk_string, only: [:create, :update] 
  before_action :milking_method_string, only: [:create, :update] 
  before_action :breastfeeding_posture_right_string, only: [:create, :update] 
  before_action :breastfeeding_posture_left_string, only: [:create, :update] 
  before_action :set_breast_condition, only: [:show, :edit, :update]
  # before_action :set_patient_breast_condition, only: [:new, :edit]
  before_action :authenticate_hospital!, only: [:new, :create, :show, :edit, :update]
  
  
  def index
    @breast_conditions = BreastCondition.all
  end
    
  def show
  end
  
  def new
    @patient = Patient.find(params[:patient_id])
    @breast_condition = BreastCondition.new
  end
  
  def create
     @breast_condition = BreastCondition.new(breast_condition_params)
      if @breast_condition.save
        redirect_to root_path, flash: {notice: "登録が完了しました."}
      else
        render :new
      end

  end
  
  def edit
    @patient = Patient.find(params[:patient_id])
  end
  
  def update
    if @breast_condition.update(breast_condition_params)
      redirect_to root_path, flash: {notice: "編集が完了しました."}
    else
      render :edit
    end
  end
  
  
  private
  
    def breast_condition_params
        params.require(:breast_condition).permit! .merge(patient_id: params[:patient_id])
    end
    
    
    def time_to_supplement_milk_string
      params[:breast_condition][:time_to_supplement_milk] = params[:breast_condition][:time_to_supplement_milk].join("/") 
    end
    
    def milking_method_string
      params[:breast_condition][:milking_method] = params[:breast_condition][:milking_method].join("/") 
    end
    
    def breastfeeding_posture_right_string
      params[:breast_condition][:breastfeeding_posture_right] = params[:breast_condition][:breastfeeding_posture_right].join("/") 
    end
    
    def breastfeeding_posture_left_string
      params[:breast_condition][:breastfeeding_posture_left] = params[:breast_condition][:breastfeeding_posture_left].join("/") 
    end
    
    def set_breast_condition
      @breast_condition = BreastCondition.find(params[:id])
    end
end


