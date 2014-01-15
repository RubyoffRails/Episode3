# Cleaning Out
Network.delete_all
Show.delete_all
amc   = Network.create(name: "AMC")
nbc   = Network.create(name: "NBC")
bravo = Network.create(name: "Bravo")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Top Chef", day_of_week: "Wednesday", hour_of_day: 19, network: bravo)
Show.create(name: "Walking Dead", day_of_week: "Sunday", hour_of_day: 20, network: amc)
