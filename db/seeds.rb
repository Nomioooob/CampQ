puts "Creating products..."

require 'open-uri'
Product.destroy_all
User.destroy_all


nomin = User.create!(
  email: "nmn@gmail.com",
  password: "111111",
  first_name: "Nomin",
  last_name: "Batsaikhan",
  location: "Japan"
)

aidan = User.create!(
  email: "aidan@gmail.com",
  password: "111111",
  first_name: "Aidan",
  last_name: "Fournier",
  location: "Japan"
)

sasha = User.create!(
  email: "sasha@gmail.com",
  password: "111111",
  first_name: "Sasha",
  last_name: "Kaverina",
  location: "Japan"
)

shogo = User.create!(
  email: "shogo@gmail.com",
  password: "111111",
  first_name: "Shogo",
  last_name: "Miyagi",
  location: "Japan"
)

sleeping_bag = Product.new(
  name: "NEMO Forte 35 Sleeping Bag",
  description: "Updated with ultralight, ultra-compressible FeatherCore™ synthetic insulation technology to provide an excellent blend of warmth, moisture resistance, comfort and packability",
  price: 1000,
  category: "Sleeping Bags",
  picture: "https://source.unsplash.com/640x400/?sleepingbag",
)

sleeping_bag.user = nomin
sleeping_bag.save!

tent = Product.new(
  name: "Dominion 1p Ultralight Backpacking Tent",
  description: "Tapered Design creates more usable space so you can sit up and move around in the tent without feeling claustrophobic!",
  price: 10000,
  category: "Tent",
  picture: "https://source.unsplash.com/640x400/?tent",
)

tent.user = aidan
tent.save!

camping_kitchen = Product.new(
  name: "Happybuy Portable Camping Kitchen",
  description: "Tired of windy nights flickering the flame? This camping kitchen is equipped with a pop-up windscreen to keep the wind out and the heat in, so your food will cook faster. ",
  price: 8000,
  category: "Camp Kitchen",
  picture: "https://source.unsplash.com/640x400/?campingkitchen",
)

camping_kitchen.user = sasha
camping_kitchen.save!

hammocks = Product.new(
  name: "DoubleNest Hammock",
  description: "This lightweight gathered-end hammock tucks into an integrated stuff sack the size of a grapefruit and weighs just over a pound, so you can keep it in your car, your daypack or your boat—ready to hang whenever you are.",
  price: 5000,
  category: "Hammocks",
  picture: "https://source.unsplash.com/640x400/?hammocks",
)

hammocks.user = shogo
hammocks.save!

booking1 = Booking.new(
  rating: 4,
  status: "pending",
)

booking1.user = nomin
booking1.product = tent
booking1.save!

booking2 = Booking.new(
  rating: 3,
  status: "available",
)

booking1.user = shogo
booking1.product = hammocks
booking1.save!
