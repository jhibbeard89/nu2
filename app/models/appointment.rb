class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :registration_office
end
