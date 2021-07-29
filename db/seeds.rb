# puts "Creating products..."
require 'open-uri'
Product.destroy_all
User.destroy_all


nomin = User.create!(
  email: "nmn@gmail.com",
  password: "111111",
  first_name: "Nomin",
  last_name: "Batsaikhan",
  location: "Japan",
  picture: "https://kitt.lewagon.com/placeholder/users/Nomioooob"

)

aidan = User.create!(
  email: "aidan@gmail.com",
  password: "111111",
  first_name: "Aidan",
  last_name: "Fournier",
  location: "Japan",
  picture: "https://kitt.lewagon.com/placeholder/users/AidanFournier"
)

sasha = User.create!(
  email: "sasha@gmail.com",
  password: "111111",
  first_name: "Sasha",
  last_name: "Kaverina",
  location: "Japan",
  picture: "https://kitt.lewagon.com/placeholder/users/sashakaverina"
)

shogo = User.create!(
  email: "shogo@gmail.com",
  password: "111111",
  first_name: "Shogo",
  last_name: "Miyagi",
  location: "Japan",
  picture: "https://kitt.lewagon.com/placeholder/users/80andAbove"
)

# bag1 = URI.open('https://source.unsplash.com/800x600/?sleepingbag')
# bag2 = URI.open('https://source.unsplash.com/800x600/?sleepingbag')
# bag3 = URI.open('https://source.unsplash.com/800x600/?sleepingbag')

# sleeping_bag = Product.new(
#   name: "NEMO Forte 35 Sleeping Bag",
#   description: "Updated with ultralight, ultra-compressible FeatherCore™ synthetic insulation technology to provide an excellent blend of warmth, moisture resistance, comfort and packability",
#   price: 1000,
#   category: "Sleeping Bags",
#   picture: "https://source.unsplash.com/640x400/?sleepingbag",
# )

# sleeping_bag.photos.attach(io: bag1, filename: 'bag1.png', content_type: 'image/png')
# sleeping_bag.photos.attach(io: bag2, filename: 'bag2.png', content_type: 'image/png')
# sleeping_bag.photos.attach(io: bag3, filename: 'bag3.png', content_type: 'image/png')

# sleeping_bag.user = nomin
# sleeping_bag.save!

# tent1 = URI.open('https://source.unsplash.com/800x600/?mountain tent')
# tent2 = URI.open('https://source.unsplash.com/800x600/?mountain tent')
# tent3 = URI.open('https://source.unsplash.com/800x600/?mountain tent')

# tent = Product.new(
#   name: "Dominion 1p Ultralight Backpacking Tent",
#   description: "Tapered Design creates more usable space so you can sit up and move around in the tent without feeling claustrophobic!",
#   price: 10000,
#   category: "Tent",
#   picture: "https://source.unsplash.com/640x400/?tent",
# )

# tent.photos.attach(io: tent1, filename: 'tent1.png', content_type: 'image/png')
# tent.photos.attach(io: tent2, filename: 'tent2.png', content_type: 'image/png')
# tent.photos.attach(io: tent3, filename: 'tent3.png', content_type: 'image/png')

# tent.user = aidan
# tent.save!

# kitchen1 = URI.open('https://source.unsplash.com/800x600/?camping food')
# kitchen2 = URI.open('https://source.unsplash.com/800x600/?camping food')
# kitchen3 = URI.open('https://source.unsplash.com/800x600/?camping food')


# camping_kitchen = Product.new(
#   name: "Happybuy Portable Camping Kitchen",
#   description: "Tired of windy nights flickering the flame? This camping kitchen is equipped with a pop-up windscreen to keep the wind out and the heat in, so your food will cook faster. ",
#   price: 8000,
#   category: "Camp Kitchen",
#   picture: "https://source.unsplash.com/640x400/?campingkitchen",

# )

# camping_kitchen.photos.attach(io: kitchen1, filename: 'kitchen1.png', content_type: 'image/png')
# camping_kitchen.photos.attach(io: kitchen2, filename: 'kitchen2.png', content_type: 'image/png')
# camping_kitchen.photos.attach(io: kitchen3, filename: 'kitchen3.png', content_type: 'image/png')

# camping_kitchen.user = sasha
# camping_kitchen.save!


# hammock1 = URI.open('https://source.unsplash.com/800x600/?hammock')
# hammock2 = URI.open('https://source.unsplash.com/800x600/?hammock')
# hammock3 = URI.open('https://source.unsplash.com/800x600/?hammock')


# hammocks = Product.new(
#   name: "DoubleNest Hammock",
#   description: "This lightweight gathered-end hammock tucks into an integrated stuff sack the size of a grapefruit and weighs just over a pound, so you can keep it in your car, your daypack or your boat—ready to hang whenever you are.",
#   price: 5000,
#   category: "Hammocks",
#   picture: "https://source.unsplash.com/640x400/?hammocks",

# )
# hammocks.photos.attach(io: hammock1, filename: 'hammock1.png', content_type: 'image/png')
# hammocks.photos.attach(io: hammock2, filename: 'hammock2.png', content_type: 'image/png')
# hammocks.photos.attach(io: hammock3, filename: 'hammock3.png', content_type: 'image/png')

# hammocks.user = shogo
# hammocks.save!

# booking1 = Booking.new(
#   rating: 4,
# )

# booking1.user = nomin
# booking1.product = tent
# booking1.save!

# booking2 = Booking.new(
#   rating: 3,
# )

# booking1.user = shogo
# booking1.product = hammocks
# booking1.save!
