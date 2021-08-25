class QuestionsController < ApplicationController
  def index
    Question.new
  end

  def create
    @question = Question.new(question_params)
    @question.save!
  end

  private
  def question_params
    params.require(:questions).permit(
      :employment_status,
      :annual_gross_income_range,
      :net_month_income_range,
      :phone_number,
      :arrivel_date,
      :date_of_birth
    )
  end
end
