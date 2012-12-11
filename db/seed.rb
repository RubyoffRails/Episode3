# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
nat  = Network.create(name: "NAT")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "The Dog Whisperer", day_of_week: "Friday", hour_of_day: 10, network: nat)
Show.create(name: "My Cat From Hell", day_of_week: "Saturday", hour_of_day: 10, network: nat)
