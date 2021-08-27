class AddCoordinatesToRegistrationOffice < ActiveRecord::Migration[6.1]
  def change
    add_column :registration_offices, :latitude, :float
    add_column :registration_offices, :longitude, :float
  end
end
