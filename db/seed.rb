# Cleaning Out
Network.delete_all
Show.delete_all
Garden.delete_all
Plant.delete_all

amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)

fruit_tree = Garden.create(category: "Fruit Trees")
nut_tree = Garden.create(category: "Nut Trees")
greens = Garden.create(category: "Greens")
underground = Garden.create(category: "Underground")
berries = Garden.create(category: "Berries")
Plant.create(name: "orange", garden: fruit_tree)
Plant.create(name: "apple", garden: fruit_tree)
Plant.create(name: "peach", garden: fruit_tree)
Plant.create(name: "pecan", garden: nut_tree)
Plant.create(name: "walnut", garden: nut_tree)
Plant.create(name: "broccoli", garden: greens)
Plant.create(name: "spinach", garden: greens)
Plant.create(name: "lettuce", garden: greens)
Plant.create(name: "potato", garden: underground)
Plant.create(name: "carrot", garden: underground)
Plant.create(name: "blackberry", garden: berries)
Plant.create(name: "strawberry", garden: berries)
Plant.create(name: "dewberry", garden: berries)
# 
# Fruit Trees [orange, apple, peach]
# Nut Trees [pecan, walnut]
# Greens [broccoli, spinach, lettuce]
# Underground [potato, carrot]
# Berries [blackberry, strawberry, dewberry] 
