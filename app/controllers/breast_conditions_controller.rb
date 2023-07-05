class BreastConditionsController < ApplicationController
  def index
    @Breast_conditions = Breast_condition.all
  end
    
  def new
    
  end
  
  def show
    
  end
end
