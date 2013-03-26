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
Recipe.create(dish: "salsa", ingredient: "[tomatoes, jalapenos, cilantro, onions]")
Recipe.create(dish: "guacamole", ingredient: "[avocados, tomatoes, jalapeno, cilantro, onions, cumin]")
Recipe.create(dish: "lentil soup", ingredient: "[red lentils, onions, celery, tomatoes, herbs de provence]")
Recipe.create(dish: "bruschetta", ingredient: "[bread, tomatoes, basil, red onions, basalmic vinegar]")
Recipe.create(dish: "hummus", ingredient: "[chickpeas, tahini, garlic, olive oil]")
