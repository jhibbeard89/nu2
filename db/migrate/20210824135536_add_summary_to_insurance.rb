class AddSummaryToInsurance < ActiveRecord::Migration[6.1]
  def change
    add_column :insurances, :summary, :text
  end
end
