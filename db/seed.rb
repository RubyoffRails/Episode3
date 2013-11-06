
Network.delete_all
Show.delete_all
Coffee.delete_all

amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
netflix = Network.create(name: "Netflix")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 19, network: nbc)
Show.create(name: "House of Cards", day_of_week: "Thursday", hour_of_day: 0, network: netflix)
Show.create(name: "Orange is the New Black", day_of_week: "Sunday" , hour_of_day: 0, network: netflix)

Coffee.create(name: 'Costa Rica', grade: 'SHB EP', process: 'Washed', region: 'Santa Maria de Dota', roast: 'Full City')
Coffee.create(name: 'Guatemala', grade: 'SHB', process: 'Washed', region: 'San Pedro Necta', roast: 'City')
Coffee.create(name: 'Honduras', grade: 'SHB', process: 'Washed', region: 'Ocotopeque', roast: 'City - Full City')
Coffee.create(name: 'Bolivia', grade: 'n/a', process: 'n/a', region: 'Caranavi', roast: 'Just brew')
Coffee.create(name: 'Java', grade: 'One', process: 'Washed', region: 'Java Sunda', roast: 'Full City')


