# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

100.times do
  post = Pet.new(
      name: Faker::Cat.name,
      category: ["cat", "dog", "fish", "bird", "rabbit", "cow"].sample,
      address: Faker::Address.street_address,
      found_on: Faker::Date.between(100.days.ago, Date.today)
  )
  post.save
end