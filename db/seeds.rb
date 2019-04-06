# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do
  User.create([{
    first_name: Faker::Name.unique.first_name,
    last_name: Faker::Name.unique.last_name,
    gender: Faker::Gender.binary_type,
    age: Faker::Number.between(18, 100),
    country: Faker::Address.country_name_to_code(name: 'united_states'),
    state: ["NC", "SC", "VA"].sample,
    city: Faker::Address.city,
    street_address: Faker::Address.street_address,
    nationality: Faker::Nation.nationality,
    introduction: Faker::Lorem.paragraphs(1),
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    
    email: Faker::Internet.free_email,
    password: "password"
  }])
end