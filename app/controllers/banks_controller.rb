class BanksController < ApplicationController
  def index
    @banks = Bank.all
    @user_answers = current_user.questions.first
    @german_level = @user_answers.german_level
    @duration = @user_answers.duration
    if @duration == "t"
      @bank = @german_level == 'Beginner' ? Bank.find_by(name: 'Deutsche Bank') : Bank.find_by(name: 'Commerzbank')
      @alternative_banks = @banks.select{|bank| bank != @bank}
    else
      @bank = Bank.find_by(name: 'N26')
      @alternative_banks = @banks.select{|bank| bank != @bank}
    end
  end
end
