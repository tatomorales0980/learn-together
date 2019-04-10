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
    state: ["NC"].sample,
    city: Faker::Address.city,
    street_address: Faker::Address.street_address,
    nationality: Faker::Nation.nationality,
    introduction: Faker::Lorem.paragraphs(1),
    latitude: Faker::Number.between(34.0000000, 37.0000000),
    longitude: Faker::Number.between(-76.0000000, -85.0000000),
    nativelanguage_id: Faker::Number.between(1,3),
    nativelevel: Faker::Number.between(1,3),
    learnlanguage_id: Faker::Number.between(1,3),
    learninglevel: Faker::Number.between(1,3),
    speaklanguage_id: Faker::Number.between(1,3),
    speaklevel: Faker::Number.between(1,3),
    
    email: Faker::Internet.free_email,
    password: "password"
  }])
end