class JourneyController < ApplicationController
  def index
    @user = current_user
    @bank = @user.user_choices.first.bank
    @insurance = @user.user_choices.first.insurance
    @appointment = @user.appointments.first
    unless @appointment.nil? || @appointment.registration_office.nil?
      @booking_date_time = @appointment.date
      @date = @booking_date_time.strftime("#{@booking_date_time.day.ordinalize} %B")
      @time = @appointment.date.strftime('%l:%M %p')
      office = @appointment.registration_office
      @markers = [{
        lat: office.latitude,
        lng: office.longitude,
        info_window: render_to_string(partial: "/registration_offices/info_window",
        locals: { office: office })
      }]
    end
  end
end
