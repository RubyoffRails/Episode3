# Cleaning Out
Network.delete_all
Show.delete_all
Game.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
m1 = Network.create(name: "M1")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Incantesimo", day_of_week: "Friday", hour_of_day: 17, network: m1)
Show.create(name: "The next one", day_of_week: "Monday", hour_of_day: 18, network: m1)
Game.create(name: "Dungeon Keeper", genre: "Strategy", teaser: "It's good to be evil.")
Game.create(name: "Tyrian 2000", genre: "Shoot \'em up", teaser: "The best shoot \'em up game of all the time!")
Game.create(name: "Warcraft", genre: "Strategy", teaser: "Warcraft is a franchise of video games, novels, and other media originally created by Blizzard Entertainment.")
Game.create(name: "Diablo", genre: "RPG", teaser: "Diablo is an action role-playing hack and slash video game developed by Blizzard North and released by Blizzard Entertainment on December 31, 1996.")
Game.create(name: "MDK", genre: "TPS", teaser: "MDK is a 1997 third-person shooter video game developed by Shiny Entertainment. It was one of the first PC games to require a Pentium or equivalent processor, and did not initially have a GPU requirement.")
