# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Flat.destroy_all

4.times do
  Flat.create!(
    name: Faker::Travel::Airport.name(size: 'large', region: 'united_states'),
    address: Faker::Address.street_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: rand(1..200),
    number_of_guests: rand(1..10)
  )
end

puts 'Flats are created'
