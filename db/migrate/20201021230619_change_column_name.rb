class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments, :appointment_datetime,:appointment_dates
  end
end
