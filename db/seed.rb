# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Monday Show", day_of_week: "Monday", hour_of_day: 20, network: amc)
Show.create(name: "Sunday Show", day_of_week: "Sunday", hour_of_day: 20, network: nbc)


Book.delete_all
Author.delete_all

michael = Author.create(name: 'Michael Crichton')
dan = Author.create(name: 'Dan Brown')
daniel = Author.create(name: 'Daniel Suarez')
stuart = Author.create(name: 'Stuart Kauffman')
douglas = Author.create(name: 'Douglas R. Hofstadter')

Book.create(title: 'Sphere', author: michael)
Book.create(title: 'Jurassic Park', author: michael)
Book.create(title: 'The Da Vinci Code', author: dan)
Book.create(title: 'Inferno', author: dan)
Book.create(title: 'Freedom', author: daniel)
Book.create(title: 'Daemon', author: daniel)
Book.create(title: 'At Home In The Universe', author: stuart)
Book.create(title: 'Godel, Escher, Bach: An Eternal Golden Braid', author: douglas)
