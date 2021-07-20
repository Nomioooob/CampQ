class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
<<<<<<< HEAD
=======
  has_many :bookings
  has_many :products
  has_many :bookings_as_owner, through: :products, source: :bookings
>>>>>>> 61211fc81448d0457bb936980d67afb448d34f59
end
