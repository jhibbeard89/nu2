class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(1)
    @message = Message.new
    redirect_back(fallback_location: root_path)
  end
end
