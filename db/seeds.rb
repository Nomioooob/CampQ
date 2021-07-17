puts "Creating products..."

3.times do
  Product.create(
  name: "NEMO Forte 35 Sleeping Bag",
  description: "Updated with ultralight, ultra-compressible FeatherCore™ synthetic insulation technology to provide an excellent blend of warmth, moisture resistance, comfort and packability",
  price: 1000,
  category: "Sleeping Bags",
  picture: "https://thepillmagazine.com/contents/wp-content/uploads/2020/09/ColetteMcerney_Indiancreek_01-1330x888-1.jpg",
)
end

3.times do
  Product.create(
  name: "Dominion 1p Ultralight Backpacking Tent",
  description: "Tapered Design creates more usable space so you can sit up and move around in the tent without feeling claustrophobic!",
  price: 10000,
  category: "Tent",
  picture: "https://thepillmagazine.com/contents/wp-content/uploads/2020/09/ColetteMcerney_Indiancreek_01-1330x888-1.jpg",
)
end
