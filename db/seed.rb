# Cleaning Out$1}$2
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 19, network: nbc)
Show.create(name: "How I met your Mother", day_of_week: "Sunday", hour_of_day: 21, network: amc)
Show.create(name: "Modern Familiy", day_of_week: "Wednesday", hour_of_day: 23, network: nbc)
Show.create(name: "Two and a Half Men", day_of_week: "Tuesday", hour_of_day: 22, network: amc)
Show.create(name: "Friends", day_of_week: "Monday", hour_of_day: 12, network: nbc)

# My recipe seeds

Recipe.delete_all
Ingredient.delete_all
cornbread_muffins = Recipe.create(name: "cornbread muffins")
tacos = Recipe.create(name: "tacos")
Ingredient.create(name: 'corn', recipe: cornbread_muffins)
Ingredient.create(name: 'butter', recipe: cornbread_muffins)
Ingredient.create(name: 'oil', recipe: cornbread_muffins)
Ingredient.create(name: 'tortilla', recipe: tacos)
Ingredient.create(name: 'avocado', recipe: tacos)
Ingredient.create(name: 'shrimp', recipe: tacos)
