class ChangeUserRequirmentInUserChoice < ActiveRecord::Migration[6.1]
  def change
    change_column :user_choices, :insurance_id, :bigint, null: true
    change_column :user_choices, :bank_id, :bigint, null: true
  end
end
