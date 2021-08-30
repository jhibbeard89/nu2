class Question < ApplicationRecord
  belongs_to :user

  def self.save_question(session, user)
    question = Question.new
    question.employment_status = session[:employment_status]
    question.annual_gross_income_range = session[:annual_gross_income_range] == 'Yes'
    question.phone_number = session[:phone_number]
    question.arrivel_date = session[:arrivel_date]
    question.date_of_birth = session[:date_of_birth]
    question.german_level = session[:german_level]
    question.duration = session[:duration] == 'Yes'
    question.user = user
    question.save!
  end

end
