class RenameColumnInBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column(:bookings, :date_start, :start_time)
  end
end
