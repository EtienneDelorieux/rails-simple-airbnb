puts "Clearing database..."
Flat.destroy_all

puts "Creating datas..."
10.times do
  Flat.create!(
    name: Faker::Hipster.sentence(2),
    address: Faker::Address.street_address,
    description: Faker::Hipster.sentence(7),
    price_per_night: (50..500).to_a.sample,
    number_of_guests: (1..8).to_a.sample
  )
end
