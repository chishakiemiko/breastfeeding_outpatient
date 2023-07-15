class VisitHistoriesController < ApplicationController
    def index
    end
    
    def new
        @visit_history = VisitHistory.new
        @patients = Patient.all
    end
    
    def create
        @visit_history = VisitHistory.new(visit_history_params)
        @visit_history.save
        redirect_to visit_histories_path
        
    end
    
    private
    
    def visit_history_params
        params.require(:visit_history).permit(:visit_on, :patient_id)
    end
end
