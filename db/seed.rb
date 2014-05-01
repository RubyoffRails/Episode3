# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
fx = Network.create(name: "FX")
bbca = Network.create(name: "BBC America")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Archer", day_of_week: "Monday", hour_of_day: 19 , network: fx)
Show.create(name: "Dr. Who", day_of_week: "Wednesday", hour_of_day: 20, network: bbca)