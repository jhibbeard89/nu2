class RegistrationOffice < ApplicationRecord
  has_many :appointments, dependent: :destroy
end
