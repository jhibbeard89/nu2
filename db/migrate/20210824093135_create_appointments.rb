class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.boolean :documents_uploaded
      t.references :user, null: false, foreign_key: true
      t.references :registration_office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
