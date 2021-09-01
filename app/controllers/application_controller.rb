class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?
  before_action :load_chat

  # Messaging service
  def load_chat
    @chatroom = Chatroom.find(1)
    @message = Message.new
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :address])
  end

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
