class Product < ApplicationRecord
  CATEGORY = ["Tent", "Camp Kitchen", "Sleeping Bags", "Hammocks"]
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :category, presence: true
  validates :price, numericality: { greater_than: 1 }
  validates :category, inclusion: { in: CATEGORY }
end
