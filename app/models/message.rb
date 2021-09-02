class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  def self.welcome_message(user, chatroom)
    message = Message.new(content: "Hello #{user.first_name}! How can I help you today?")
    message.user = user
    message.chatroom = chatroom
    message.save!
  end
end
