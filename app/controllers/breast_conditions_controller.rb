class BreastConditionsController < ApplicationController
  def index
    @Breast_conditions = Breast_condition.all
  end
    
  def new
    @breast_condition = Breast_condition.new
  end
  
  def create
    @breast_condition = Breast_condition.new(post_params)
      if @breast_conditio.save
        redirect_to root_path, flash: {notice: "登録が完了しました."}
      else
        render :new
      end
  
  end
  
  
  
  def show
    
  end
  
  
  
    def patient_params
        params.require(:breast_condition).permit!
    end
    
    
    def childcare_collaborator_string
      params[:breast_condition][:time_to_supplement_milk] = params[:breast_condition][:time_to_supplement_milk].join("/") 
    end
    
    def infectious_disease_string
      params[:breast_condition][:milking_method] = params[:breast_condition][:milking_method].join("/") 
    end
    
    def pre_existing_disease_string
      params[:breast_condition][:breastfeeding_posture_righ] = params[:breast_condition][:breastfeeding_posture_righ].join("/") 
    end
    
    def pregnancy_progress_this_time_string
      params[:breast_condition][:breastfeeding_posture_left] = params[:breast_condition][:breastfeeding_posture_left].join("/") 
    end
    
    def set_patient
     @breast_condition = Breast_condition.find(params[:id])
    end
end


