class AddImageToInsurances < ActiveRecord::Migration[6.1]
  def change
    add_column :insurances, :image, :string
  end
end
