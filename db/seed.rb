# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
cbs = Network.create(name: "CBS")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "60 Minutes", day_of_week: "Sunday", hour_of_day: 18, network: cbs)
Show.create(name: "Survivor", day_of_week: "Thursday", hour_of_day: 20, network: cbs)

Recipe.delete_all
Recipe.create(dish: "salsa", ingredients: "[tomatoes, jalapenos, cilantro, onions]", instructions: "chop and mix all ingredients together; season to taste")
Recipe.create(dish: "guacamole", ingredients: "[avocados, tomatoes, jalapeno, cilantro, onions, cumin]", instructions: "mash avocados; dice onions and tomatoes; mix all ingredients together; season to taste")
Recipe.create(dish: "lentil soup", ingredients: "[red lentils, onions, celery, tomatoes, herbs de provence]", instructions: "saute diced onions and celery in olive oil for 5 min; add red lentils, water, tomatoes, and spices; cook for 20 minutes")
Recipe.create(dish: "bruschetta", ingredients: "[bread, tomatoes, basil, red onions, basalmic vinegar]", instructions: "chop tomatoes, basil, red onions; add basalmic vinegar to mixture; serve with toasted bread")
Recipe.create(dish: "hummus", ingredients: "[chickpeas, tahini, garlic, olive oil]", instructions: "put all ingredients in blender and blend until it reaches smoot texture")
