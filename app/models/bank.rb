class Bank < ApplicationRecord
    has_many :choices
    has_many :users, through: :choices

end
