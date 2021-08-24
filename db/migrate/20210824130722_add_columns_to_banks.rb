class AddColumnsToBanks < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :english_customer_support, :integer
    add_column :banks, :signup_process, :integer
    add_column :banks, :bank_fees, :integer
    add_column :banks, :atm_fees, :integer
    add_column :banks, :banking_features, :integer
    add_column :banks, :summary, :text
  end
end
