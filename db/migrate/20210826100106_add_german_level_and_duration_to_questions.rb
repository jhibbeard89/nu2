class AddGermanLevelAndDurationToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :german_level, :string
    add_column :questions, :duration, :integer
  end
end
