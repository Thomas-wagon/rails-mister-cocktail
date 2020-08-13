# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
data = JSON.parse(open(url).read)
ingredients_array = data["drinks"]
ingredients_array.each do |hash|
  # each element of arrry is a hash (all of the keys of each has are the same)
  # access each value of the hash (the value is an ingredient)
  # store that value 
  ingredient_name = hash["strIngredient1"]
  # create a new instance of Ingredient from that value
  Ingredient.create( name: ingredient_name)
end