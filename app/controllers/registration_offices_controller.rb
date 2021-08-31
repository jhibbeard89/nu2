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
    @user_marker = {
        lat: current_user.latitude,
        lng: current_user.longitude,
        image_url: helpers.asset_url('home_icon.png')
    }
  end

  def show
    @registration_office = RegistrationOffice.find(params[:id])
    @appointments = Appointment.where(registration_office_id: @registration_office.id)
  end
end
