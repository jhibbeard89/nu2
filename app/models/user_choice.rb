class UserChoice < ApplicationRecord
  belongs_to :bank, optional: true
  belongs_to :insurance, optional: true
  belongs_to :user
end
