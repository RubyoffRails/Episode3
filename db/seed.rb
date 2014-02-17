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

Beer.delete_all
Beer.create(name: 'Nova Schin', country: 'Brazil', brewer: ' Brasil Kirin', kind_of: 'Pilsner', rating: 5, summary:'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed')
Beer.create(name: 'Tusker', country: 'Kenya', brewer: 'East African Breweries', kind_of: 'Lager', rating: 4, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
Beer.create(name: 'Tui', country: 'New Zealand', brewer: 'DB Breweries', kind_of: 'Indian Pale Ale', rating: 4, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
Beer.create(name: 'Victoria Bitter', country: 'Australian', brewer: 'Carlton & United Breweries, Ltd', kind_of: 'Lager', rating: 1, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
Beer.create(name: 'Tiger', country: 'Singapore', brewer: 'Foo', kind_of: 'Lager', rating: 3, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tsummary: incidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
Beer.create(name: 'Sapporo', country: 'Japan', brewer: 'Sapporo Breweries Ltd', kind_of: 'Lager', rating: 2, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
Beer.create(name: 'Castle', country: 'South Africa', brewer: 'South African Breweries Ltd', kind_of: 'Lager', rating: 5, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
Beer.create(name: 'Windhoek', country: 'Namibia', brewer: 'Namibia Breweries', kind_of: 'Lager', rating: 2, summary: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ...')
