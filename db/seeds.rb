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

