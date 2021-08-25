class RenameWayAnswersToWay < ActiveRecord::Migration[6.1]
  def change
    rename_table :way_answers, :user_profile_questions
  end
end
