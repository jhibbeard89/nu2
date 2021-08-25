class RegistrationOfficesController < ApplicationController
  def index
    @registration_offices = RegistrationOffice.all
  end

  def show
    @registration_office = RegistrationOffice.find(params[:id])
  end
end

puts "comment"
