class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :product
  enum status: [:accepted, :pending, :rejected]
  validates :rating, inclusion: { in: (0..5) }

  def pending?
    status == 'pending'
  end
end
