# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Breaking Bad", day_of_week: "Saturday", hour_of_day: 20, network: amc)
Show.create(name: "Californication", day_of_week: "Sunday", hour_of_day: 23, network: nbc)