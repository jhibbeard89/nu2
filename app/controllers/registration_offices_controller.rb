class RegistrationOfficesController < ApplicationController
  def index
    @registration_offices = RegistrationOffice.all

    @markers = @registration_offices.geocoded.map do |office|
      {
        lat: office.latitude,
        lng: office.longitude,
        info_window: render_to_string(partial: "/registration_offices/info_window", locals: { office: office })
      }
    end
  end

  def show
    @registration_office = RegistrationOffice.find(params[:id])
    @appointments = Appointment.where(registration_office_id: @registration_office.id)
  end
end
