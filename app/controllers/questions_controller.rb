class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def new
    @question = Question.new
  end

  def set_session_questions
    question_params.each do |k, v|
      session[k.to_sym] = v
    end
    redirect_to new_user_registration_path
  end

  def create
    raise
  end

  private

  def question_params
    params.require(:questions).permit(
      :employment_status,
      :german_level,
      :annual_gross_income_range,
      :net_month_income_range,
      :email,
      :phone_number,
      :arrival_date,
      :address,
      :duration,
      :date_of_birth
    )
  end
end
