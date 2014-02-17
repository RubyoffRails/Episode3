# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
cine = Network.create(name: "Cinemax")
usa = Network.create(name: "USA Network")
netflix = Network.create(name: "Netflix")
sho = Network.create(name: "Showtime")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Breaking Bad", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Banshee", day_of_week: "Friday", hour_of_day: 22, network: cine)
Show.create(name: "Suits", day_of_week: "Thursday", hour_of_day: 21, network: usa)
Show.create(name: "House of Cards", day_of_week: "Friday", hour_of_day: 20, network: netflix)
Show.create(name: "House of Lies", day_of_week: "Sunday", hour_of_day: 22, network: sho)
