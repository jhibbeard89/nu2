class ChangeHoursToStringInRegistrationOffice < ActiveRecord::Migration[6.1]
  def change
    change_column :registration_offices, :opening_hours, :string
    change_column :registration_offices, :closing_hours, :string
  end
end
