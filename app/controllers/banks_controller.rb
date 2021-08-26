class BanksController < ApplicationController
  def index
    @banks = Bank.all
    @user_answers = current_user.questions
    raise
    @german_level = @user_answers.german_level
    @duration = @user_answers.duration

    if @duration > 12
      @bank = @german_level == 'Beginner' ? @banks.where(name: 'Deutsche Bank') : @bank.where(name: 'Deutsche Bank')
    else
      @bank = @banks.where(name: 'N26')
    end
  end
end
