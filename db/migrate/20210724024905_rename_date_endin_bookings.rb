class RenameDateEndinBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column(:bookings, :date_end, :end_time)
  end
end
