# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
DishTag.delete_all
DishTag.reset_pk_sequence
Tag.delete_all
Tag.reset_pk_sequence
Dish.delete_all
Dish.reset_pk_sequence
Restaurant.delete_all
Restaurant.reset_pk_sequence

puts "seeding database..."

restaurant_names = ["Red Parrot", "Jo's Nautical Bar", "Hull's Kitchen", "Alma Nove", "Tosca", "Caffe Tosca", "The Corner Stop", "Pizza Box", "Wahlburgers", "Mel's Burgers", "ABC Kitchen", "Starbucks", "The Daily Press", "The Sandbar", "Royal Oak", "City Cakes", "The Spaghetti Factory", "The Kitchen", "The Daily Oyster", "The Chocolate Bar"]

restaurant_names.each do |restaurant|
    # puts restaurant
    Restaurant.create!(name: restaurant)
end

puts "created #{Restaurant.count} restaurants!"

15.times do
    Tag.create!(name: Faker::Food.ethnic_category)
end

puts "created #{Tag.count} tags!"

res = 1
while res < 21
    10.times do
        Dish.create!(name: Faker::Food.dish, restaurant_id: res)
    end
    res += 1
end

puts "created #{Dish.count} dishes!"

dish = 1
while dish < 201
    3.times do
        DishTag.create!(dish_id: dish, tag_id: rand(1..15))
    end
    dish += 1
end

puts "created #{DishTag.count} dish-tags!"