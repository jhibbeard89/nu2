class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end


  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    unless current_user.id == 1
      redirect_back(fallback_location: root_path)
    end
  end
end
