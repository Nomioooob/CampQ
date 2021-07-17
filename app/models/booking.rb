class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  enum status: [:available, :pending, :not_available]
  validates :rating, inclusion: { in: (1..5)}
end
