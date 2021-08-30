class InsurancesController < ApplicationController
  def index
    @insurances = Insurance.all
    @user_answers = current_user.questions.first
    @public_insurances = Insurance.where(private: false)
    @private_insurances = Insurance.where(private: true)
    @employment_status = @user_answers.employment_status
    @annual_gross_income_range = @user_answers.annual_gross_income_range
    age = Date.today.year - @user_answers.date_of_birth.year
    if @annual_gross_income_range == 'f' || (@employment_status == "Student" && age < 30)
      @insurance = @public_insurances
      @type = "public health care."
    elsif age <= 35 && @annual_gross_income_range == 't'
      @insurance = @private_insurances
      @type = "private health care as it is cheaper in the long term."
    else
      @insurance = @insurances
      @type = "either public or private health insurance."
    end
    @new = current_user.user_choices.first.nil?
  end

  def create
    user = current_user
    insurance = Insurance.find(params[:id])
    @user_choice = UserChoice.new
    @user_choice.user = user
    @user_choice.insurance = insurance
    @user_choice.save!
    redirect_to req_index_path
  end

  def update
    insurance = Insurance.find(params[:id])
    @user_choice = UserChoice.where(user: current_user).first
    @user_choice.insurance = insurance
    @user_choice.save!
    redirect_to req_index_path
  end
end
