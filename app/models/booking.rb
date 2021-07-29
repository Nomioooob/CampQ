class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  enum status: { pending: 0, confirmed: 1, declined: 2 }
  validates :rating, inclusion: { in: (0..5) }
end
