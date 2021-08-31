class JourneyController < ApplicationController
  def index
    @user = current_user.user_choices.first
    @bank = @user.bank
    @insurance = @user.insurance
  end
end
