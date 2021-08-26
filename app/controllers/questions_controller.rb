class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :create, :user_new, :user_create]
  def index
    Question.new
  end

  def create
    @user = User.new
    @user.email = user_params['email']
    @user.password = '123456'
    @user.save
    @question = Question.new(question_params)
    @question.user = @user
    @question.save
    redirect_to user_new_path(@user)
  end

  def user_new
    @user = User.find(params[:id])
  end

  def user_create
    raise
  end

  private

  def user_params
    params.require(:questions).permit(
      :email
    )
  end

  def question_params
    params.require(:questions).permit(
      :employment_status,
      :german_level,
      :annual_gross_income_range,
      :net_month_income_range,
      :phone_number,
      :arrivel_date,
      :duration,
      :date_of_birth
    )
  end
end
