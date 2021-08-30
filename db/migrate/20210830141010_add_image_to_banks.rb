class AddImageToBanks < ActiveRecord::Migration[6.1]
  def change
    add_column :banks, :image, :string
  end
end
