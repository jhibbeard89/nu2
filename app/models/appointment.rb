class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :registration_office
  has_many_attached :photos

  def not_booked?
    self.user.nil?
  end
end
