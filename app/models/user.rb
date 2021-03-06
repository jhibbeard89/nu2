class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions
  has_many :appointments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :user_choices
  has_many :chatrooms
end
