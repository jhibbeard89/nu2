class ChangeUserReferenceInAppointments < ActiveRecord::Migration[6.1]
  def change
    change_column :appointments, :user_id, :bigint, null: true
  end
end
