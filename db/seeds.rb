# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p "Seeding 10 users"
10.times do |n|
  User.create! email: Faker::Internet.email,
    password: "123456"
end

p "Seeding 50 properties"
50.times do |n|
  Property.create! title: "Mountain House",
    property_type: "Apartment",
    description: "It comes in very handy for taking screenshots (taking screenshots for my project, Catch the Best was the original impetus for the creation of this gem), having real-looking test data, and having your database populated with more than one or two records while you're doing development.",
    rating: 5,
    price: 23.45,
    duration: 2,
    image: "https://images.unsplash.com/photo-1527030280862-64139fba04ca?ixlib=rb-1.2.1&auto=format&fit=crop&w=906&q=80",
    user_id: 1
end

p "Seeding 5 favorites"
5.times do |n|
  Favorite.create! user_id: 1,
  property_id: 1
end