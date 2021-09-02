class MessagesController < ApplicationController
  def create
    if current_user.id == 1
      @chatroom = Chatroom.find(params[:id])
    else
      @chatroom = current_user.chatrooms.first
    end
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save!
        ChatroomChannel.broadcast_to(
            @chatroom,
            {html: render_to_string(partial: "message", locals: { message: @message, user: current_user }), user: current_user, id: @message.id}
          )
          redirect_to chatroom_path(@chatroom, anchor: "message-#{@message.id}")
    else
        render "chatrooms/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
