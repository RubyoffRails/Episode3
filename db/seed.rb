# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
fox = Network.create(name: "FOX")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Fringe", day_of_week: "Monday", hour_of_day: 21, network: fox)
Show.create(name: "Walking Dead", day_of_week: "Thursday", hour_of_day: 20, network: amc)
