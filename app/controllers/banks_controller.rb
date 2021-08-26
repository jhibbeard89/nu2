class BanksController < ApplicationController
  def index
    @banks = Bank.all
    @n26 = Bank.find_by(name: 'N26')
    @deutschebank = Bank.find_by(name: 'Deutsche Bank')
    @commerzbank = Bank.find_by(name: 'Commerzbank')
    @user_answers = current_user.questions
    @german_level = @user_answers.german_level
    @duration = @user_answers.duration

    if @duration > 12
      @bank = @german_level == 'Beginner' ? @deutschebank : @commerzbank
    else
      @bank = @n26
    end
  end
end
