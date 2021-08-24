class UserChoice < ApplicationRecord
  belongs_to :bank
  belongs_to :insurance
  belongs_to :user
end
