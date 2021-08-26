class BanksController < ApplicationController
  def index
    @banks = Bank.all
    @user_answers = current_user.questions.first
    @german_level = @user_answers.german_level
    @duration = @user_answers.duration

    if @duration > 12
      @bank = @german_level == 'Beginner' ? @banks.find_by(name: 'Deutsche Bank') : @bank.find_by(name: 'Deutsche Bank')
    else
      @bank = @banks.find_by(name: 'N26')
    end
  end
end
