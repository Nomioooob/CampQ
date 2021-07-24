class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  enum status: %i[available pending rejected]
  validates :rating, inclusion: { in: (0..5) }
end
