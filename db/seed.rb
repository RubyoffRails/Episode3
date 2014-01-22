# Cleaning Out
Network.delete_all
Show.delete_all
Review.delete_all
amc   = Network.create(name: "AMC")
nbc   = Network.create(name: "NBC")
bravo = Network.create(name: "Bravo")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Top Chef", day_of_week: "Wednesday", hour_of_day: 19, network: bravo)
Show.create(name: "Walking Dead", day_of_week: "Sunday", hour_of_day: 20, network: amc)

Review.create(movie: "Pulp Fiction",
              rating: 5,
              reviewer: "Anthony Lane",
              synopsis: "The talk is dirty and funny, the violence always waiting just around the corner.")
Review.create(movie: "Raiders of the Lost Ark",
              rating: 5,
              reviewer: "Gene Siskel",
              synopsis: "Yes, it's as entertaining as you have heard. Maybe more so. Raiders of the Lost Ark is, in fact, about as entertaining as a commercial movie can be.")
Review.create(movie: "Amadeus",
              rating: 5,
              reviewer: "Gene Siskel",
              synopsis: "The subject of artistic creation is typically handled badly in the movies.... [Amadeus] treats the subject of creativity in a fresh way.")
Review.create(movie: "American Hustle",
              rating: 5,
              reviewer: "Joe Neumaier",
              synopsis: "It turns out that comb-overs, cleavage, cocaine and kookiness are an unbeatable combo.")
Review.create(movie: "The Big Lebowski",
              rating: 5,
              reviewer: "Rick Groen",
              synopsis: "A typical Coen brothers film is like no film you've ever seen.")
