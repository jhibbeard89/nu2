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
    @new = current_user.user_choices.first.nil?
  end

  def create
    user = current_user
    bank = Bank.find(params[:id])
    @user_choice = UserChoice.new
    @user_choice.user = user
    @user_choice.bank = bank
    @user_choice.save!
    redirect_to journey_index_path
  end

  def update
    bank = Bank.find(params[:id])
    @user_choice = UserChoice.where(user: current_user).first
    @user_choice.bank = bank
    @user_choice.save!
    redirect_to journey_index_path
  end

  def destroy
    @user_choice = UserChoice.where(user: current_user).first
    @user_choice.bank = nil
    @user_choice.save!
    redirect_to journey_index_path
  end
end
