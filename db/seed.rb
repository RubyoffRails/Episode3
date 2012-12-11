# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
cbs = Network.create(name: "CBS")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: 'Elementary', day_of_week: 'Thursday', hour_of_day: 22, network: cbs)
Show.create(name: 'Person of Interest', day_of_week: 'Thursday', hour_of_day: 21, network: cbs)
