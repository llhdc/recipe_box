# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

25.times do
  recipe = Recipe.create!(name: Faker::Food.dish, makes: rand(1..10))


  rand(1..5).times do
    recipe.ingredients.create(element: Faker::Food.ingredient, quantity: rand(1..5), metric_measurement: Faker::Food.metric_measurement)
  end

  rand(1..5).times do
    recipe.steps.create(description: Faker::Coffee.notes)
  end
end
