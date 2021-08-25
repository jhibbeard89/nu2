class DropUserProfileQuestions < ActiveRecord::Migration[6.1]
  def change
    drop_table :user_profile_questions
  end
end
