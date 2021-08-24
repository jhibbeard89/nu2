class CreateWayAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :way_answers do |t|
      t.string :employment_status
      t.string :income_range
      t.datetime :arrival_date
      t.string :address
      t.string :phone_number
      t.datetime :date_of_birth
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
