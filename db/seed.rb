
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
netflix = Network.create(name: "Netflix")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 19, network: nbc)
Show.create(name: "House of Cards", day_of_week: "Thursday", hour_of_day: 0, network: netflix)
Show.create(name: "Orange is the New Black", day_of_week: "Sunday" , hour_of_day: 0, network: netflix)

