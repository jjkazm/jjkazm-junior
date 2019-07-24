class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.build(patient_params)
    if @patient.save
      redirect_to patient_path(@patient)
    else
      render 'new'
    end
  end

  end

  def show
  end

  private

    def set_patient
      Patient.find(params[:id])
    end

    def patient_params
      params.require(:patient).permit(:name, :weight, :height)
    end
end
