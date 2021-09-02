class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    Question.save_question(session, @user)
    @chatroom = Chatroom.new_chatroom(@user)
    Message.welcome_message(@user, @chatroom)
    req_index_path if is_navigational_format?
  end
end
