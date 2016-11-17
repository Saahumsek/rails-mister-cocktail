require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dose.delete_all
Cocktail.delete_all
Ingredient.delete_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

json = JSON.load(open(url))

json["drinks"].each do |drink|
  Ingredient.create(name: drink["strIngredient1"])
end
