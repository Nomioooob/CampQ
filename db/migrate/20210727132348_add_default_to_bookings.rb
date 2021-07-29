class AddDefaultToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :status, :integer, default: 2
  end
end
