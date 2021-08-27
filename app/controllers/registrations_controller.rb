class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    Question.save_question(session, @user)
    banks_path if is_navigational_format?
  end
end
