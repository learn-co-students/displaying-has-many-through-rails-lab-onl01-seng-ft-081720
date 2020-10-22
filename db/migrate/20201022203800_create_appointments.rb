class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.integer :doctor_id
      t.integer :patient_id
    end
  end
end
