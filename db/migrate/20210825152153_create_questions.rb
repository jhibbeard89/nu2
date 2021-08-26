class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :employment_status
      t.integer :annual_gross_income_range
      t.integer :net_month_income_range
      t.string :phone_number
      t.datetime :arrivel_date
      t.datetime :date_of_birth
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
