# Cleaning Out
Network.delete_all
Show.delete_all
Concert.delete_all

amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
cbs = Network.create(name: "CBS")

Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
# Panda Level
Show.create(name: "Breaking Bad", day_of_week: "Sunday", hour_of_day: 20, network: amc)
Show.create(name: "The Big Bang Theory", day_of_week: "Thursday", hour_of_day: 20, network: cbs)

# Eagle Level
Concert.create(artist_name: "John Mayer", location_country: "Canada", location_city: "Toronto", hour_of_day: 20)
Concert.create(artist_name: "Jack Johnson", location_country: "United States", location_city: "New York", hour_of_day: 21)
Concert.create(artist_name: "U2", location_country: "Canada", location_city: "Toronto", hour_of_day: 22)
Concert.create(artist_name: "Eagles", location_country: "Canada", location_city: "Vancouver", hour_of_day: 21)
Concert.create(artist_name: "Bon Jovi", location_country: "United Kingdom", location_city: "London", hour_of_day: 20)
