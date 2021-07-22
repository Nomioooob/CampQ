class AddDefaultRatingToBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :rating, :integer, default: 0
  end
end
