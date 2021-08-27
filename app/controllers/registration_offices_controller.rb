class RegistrationOfficesController < ApplicationController
  def index
    @registration_offices = RegistrationOffice.all
  end

  def show
    @registration_office = RegistrationOffice.find(params[:id])
    @appointments = Appointment.where(registration_office_id: @registration_office.id)
  end
end
