class AddNetIncomeRangeToUserProfileQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :user_profile_questions, :net_income, :integer
  end
end
