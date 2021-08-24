class RegistrationOfficesController < ApplicationController
  def index
    @registration_offices = RegistrationOffice.all
  end
end
