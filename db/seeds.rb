puts 'Clearing the database'
5.times do
  Restaurant.destroy_all
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Created #{restaurant.name}"
end
