class ChangeUserRequirmentToNotRequired < ActiveRecord::Migration[6.1]
  def change
    change_column_null :user_profile_questions, :user_id, true
  end
end
