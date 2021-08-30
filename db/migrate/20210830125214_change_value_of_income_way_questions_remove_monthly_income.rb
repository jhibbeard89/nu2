class ChangeValueOfIncomeWayQuestionsRemoveMonthlyIncome < ActiveRecord::Migration[6.1]
  def change
    change_column :questions, :annual_gross_income_range, :string
    change_column :questions, :duration, :string
    remove_column :questions, :net_month_income_range
  end
end
