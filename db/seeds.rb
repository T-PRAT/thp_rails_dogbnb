# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
DogSitter.destroy_all
Stroll.destroy_all
City.destroy_all

5.times { City.create(city_name: Faker::Address.city) }

5.times { DogSitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id) }
10.times do
	dog = Dog.create(name: Faker::Creature::Dog.name, city_id: City.all.sample.id)
	Stroll.create(date: Faker::Time.forward(days: 60), dog: dog)
end
