class Insurance < ApplicationRecord
    has_many :choices
    has_many :users, through: :choices
end
