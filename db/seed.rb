# Cleaning Out
Network.delete_all
Show.delete_all
Book.delete_all
Character.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
disc = Network.create(name: "Discovery")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Mythbusters", day_of_week: "Wednesday", hour_of_day: 19, network: disc)
Show.create(name: "Monday Night Football", day_of_week: "Monday", hour_of_day: 20, network: nbc)
lotr = Book.create(title: "Lord of the Rings", author: "J.R.R.Tolkien", pages: 1023)
Book.create(title: "Excession", author: "Iain M. Banks", pages: 523)
_2001 = Book.create(title: "2001: A Space Odyssey", author: "Arthur C. Clarke", pages: 340)
Book.create(title: "The Malloreon", author: "David Eddings", pages: 450)
Book.create(title: "A Game of Thrones", author: "George R. R. Martin", pages: 1267)
Character.create(name: "Frodo", book: lotr)
Character.create(name: "Bilbo", book: lotr)
Character.create(name: "Aragorn", book: lotr)
Character.create(name: "Dave", book: _2001)
Character.create(name: "HAL9000", book: _2001)