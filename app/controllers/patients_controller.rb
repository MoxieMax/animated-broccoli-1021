class PatientsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
  end
end