# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
discovery = Network.create(name: "Discovery")
history = Network.create(name: "History")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Mythbusters", day_of_week: "Sunday", hour_of_day: 19, network: discovery)
Show.create(name: "Top Shot", day_of_week: "Tuesday", hour_of_day: 18, network: history)