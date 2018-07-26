# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.times do     # On génère 10 utilisateurs avec le style gem Faker
#   new_user = User.create(
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     email: Faker::Internet.email,
#     age: Faker::Number.between(20, 60),
#     description:Faker::Superhero.descriptor
#   )
# end




10.times do
	City.create(name: Faker::Nation.capital_city,
	postal_code: rand(10..90)
	)
end

  10.times do
     User.create(first_name: Faker::Name.first_name,
     	last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      age: Faker::Number.between(20, 60),
      description:Faker::Superhero.descriptor,
      city_id: rand((City.first.id)..(City.last.id))
     	)
  
  end

20.times do


  Gossip.create(
    title: Faker::Cannabis.medical_use,
    content: Faker::Lorem.paragraph,
    user_id: rand((User.first.id)..(User.last.id))
)
end
