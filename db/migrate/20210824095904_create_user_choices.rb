class CreateUserChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :user_choices do |t|
      t.references :bank, null: false, foreign_key: true
      t.references :insurance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
