# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "Sambuca")
Ingredient.create(name: "Dark rum")
Ingredient.create(name: "Triple sec")

20.times do
cocktail = Cocktail.create(name: Faker::Coffee.blend_name)
cocktail.save!

end

puts "20 cocktails created"
