class MedicalTreatmentsController < ApplicationController
  def new
    @medical_treatment = Medical_treatment.new
  end

end
