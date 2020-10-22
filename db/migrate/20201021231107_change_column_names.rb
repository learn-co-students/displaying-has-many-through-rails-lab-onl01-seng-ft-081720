class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments,:appointment_dates, :appointment_datetime 
  end
end
