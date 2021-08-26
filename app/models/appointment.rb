class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :registration_office

  def not_booked?
    self.user.nil?
  end
end
