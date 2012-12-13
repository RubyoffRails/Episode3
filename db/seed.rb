# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
nat  = Network.create(name: "NAT")
sci  = Network.create(name: "SCI")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "The Dog Whisperer", day_of_week: "Friday", hour_of_day: 10, network: nat)
Show.create(name: "My Cat From Hell", day_of_week: "Saturday", hour_of_day: 10, network: nat)
Show.create(name: "Battlestar Galactica", day_of_week: "Saturday", hour_of_day: 11, network: sci)
Show.create(name: "Dr. Who", day_of_week: "Saturday", hour_of_day: 13, network: sci)

Book.create(author: "Fyodor Dostoyevsky",title: "The Brothers karamazov", rating: 10)
Book.create(author: "Fyodor Dostoyevsky",title: "Crime And Punishment", rating: 10)
Book.create(author: "Charles Bukowski",title: "Ham On Rye", rating: 10)
Book.create(author: "Alexander Solzhenitsyn",title: "Cancer Ward", rating: 7)
Book.create(author: "China Mieville", title: "The Scar", rating: 9)
Book.create(author: "Colson Whitehead", title: "John Henry Days", rating: 3)
Book.create(author: "Junot Diaz", title: "The Brief Wondrous Life of Oscar Wao", rating: 8)
Book.create(author: "Richard Wright", title: "The Outsider", rating: 8)
Book.create(author: "Richard Wright", title: "Native Son", rating: 9)
