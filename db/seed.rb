# Cleaning Out
Network.delete_all
Show.delete_all

amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
showtime = Network.create(name: "Showtime")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Hannibal", day_of_week: "Monday", hour_of_day: 20, network: nbc)
Show.create(name: "Homeland", day_of_week: "Thursday", hour_of_day: 20, network: showtime)