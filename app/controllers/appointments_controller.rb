class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
    @registration_offices = RegistrationOffice.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update!(user: current_user)
    redirect_to journey_index_path
  end
end
