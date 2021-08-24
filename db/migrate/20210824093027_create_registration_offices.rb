class CreateRegistrationOffices < ActiveRecord::Migration[6.1]
  def change
    create_table :registration_offices do |t|
      t.string :office_name
      t.string :address
      t.dateTime :opening_hours
      t.dateTime :closing_hours

      t.timestamps
    end
  end
end
