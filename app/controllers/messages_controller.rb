class MessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    if @message.save!
        ChatroomChannel.broadcast_to(
            @chatroom,
            {html: render_to_string(partial: "message", locals: { message: @message, user: current_user }), user: current_user, id: @message.id}
          )
          redirect_to chatroom_path(@chatroom)
    else
        raise
        render "chatrooms/show"
    end
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
