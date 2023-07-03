class BreastConditionsController < ApplicationController
  def new
    @breast_condition = Breast_condition.new
  end
end
