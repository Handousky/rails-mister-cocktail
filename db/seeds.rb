require 'open-uri'
require 'json'

Ingredients.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
json_file_serialized = open(url).read
json_file = JSON.parse(json_file_serialized)
json_file[“drinks”].each do |d|
  Ingredient.create(name: d["strIngredient1"])
end
