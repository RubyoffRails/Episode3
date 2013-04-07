# Cleaning Out
Publisher.delete_all
Game.delete_all
ffg = Publisher.create(name: "Fantasy Flight Games")
slg = Publisher.create(name: "Sirlin Games")
zmg = Publisher.create(name: "Z-Man Games")

Game.create(name: "Mansions of Madness", players_min: 2, players_max: 5, designer: "Corey Konieczka", publisher: ffg)
Game.create(name: "Android: Infiltration", players_min: 2, players_max: 6, designer: "Donald X. Vaccarino", publisher: ffg)
Game.create(name: "Puzzle Strike", players_min: 2, players_max: 4, designer: "David Sirlin", publisher: slg)
Game.create(name: "Flash Duel", players_min: 1, players_max: 5, designer: "David Sirlin", publisher: slg)
Game.create(name: "Pandemic", players_min: 2, players_max: 4, designer: "Matt Leacock", publisher: zmg)