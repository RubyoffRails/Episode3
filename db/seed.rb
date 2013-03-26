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

