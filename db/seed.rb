# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Breaking Bad", day_of_week: "Sunday", hour_of_day: 20, network: amc)
Show.create(name: "Modern Family", day_of_week: "Wednesday", hour_of_day: 19, network: nbc)

Recipe.delete_all
chicken_pie = Recipe.create(name: "Chicken Pie")
Ingredient.create(name: "Checken", recipe: chicken_pie)
Ingredient.create(name: "Carrot", recipe: chicken_pie)
Ingredient.create(name: "Onions", recipe: chicken_pie)
Ingredient.create(name: "Puff Pastry", recipe: chicken_pie)

