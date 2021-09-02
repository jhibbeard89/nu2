class Chatroom < ApplicationRecord
  has_many :messages
  belongs_to :user

  def self.new_chatroom(user)
    chatroom_number = Chatroom.count + 1
    chatroom = Chatroom.new(name: "Chat with Hans - #{chatroom_number}")
    chatroom.user = user
    chatroom.save!
  end
end
