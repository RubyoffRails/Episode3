# Cleaning Out
Game.delete_all
Network.delete_all
Show.delete_all
# Declare Networks
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
fx = Network.create(name: "FX")
bbca = Network.create(name: "BBC America")
# Add in shows
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Archer", day_of_week: "Monday", hour_of_day: 19 , network: fx)
Show.create(name: "Dr. Who", day_of_week: "Wednesday", hour_of_day: 20, network: bbca)
# Add in games
#
# Xbox360
Game.create(name: "Halo: Combat Evolved", system: "Xbox360", esrb_rating: "M", studio: "Bungie")
Game.create(name: "Dark Souls", system: "Xbox360", esrb_rating: "M", studio: "From Software")
Game.create(name: "Crysis", system: "Xbox360", esrb_rating: "M", studio: "Crytek Frankfurt")
Game.create(name: "Dragon Age: Origins", system: "Xbox360", esrb_rating: "M", studio: "Bioware")
# XboxOne
Game.create(name: "TitanFall", system: "XboxOne", esrb_rating: "M", studio: "Respawn Entertainment")
Game.create(name: "Ryse: Son of Rome", system: "XboxOne", esrb_rating: "M", studio: "Crytek")
Game.create(name: "Dead Rising 3", system: "XboxOne", esrb_rating: "M", studio: "Capcom")
Game.create(name: "Crimson Dragon", system: "XboxOne", esrb_rating: "M", studio: "Grounding Inc.")
# PS3
Game.create(name: "The Last of Us", system: "PS3", esrb_rating: "M", studio: "Naughty Dog")
Game.create(name: "Assassins Creed IV: Black Flag", system: "PS3", esrb_rating: "M", studio: "Ubisoft")
Game.create(name: "Grand Theft Auto V", system: "PS3", esrb_rating: "M", studio: "Rockstar")
Game.create(name: "Metal Gear Solid 4", system: "PS3", esrb_rating: "M", studio: "Konami")
# PS4
Game.create(name: "Contrast", system: "PS4", esrb_rating: "M", studio: "Compulsion Games")
Game.create(name: "DiveKick", system: "PS4", esrb_rating: "M", studio: "One True Game Studios")
Game.create(name: "Super Motherland", system: "PS4", esrb_rating: "M", studio: "XGen Studios")
Game.create(name: "Warframe", system: "PS4", esrb_rating: "M", studio: "Digital Extremes")
# GameBoy
Game.create(name: "Fire Emblem: Awakening", system: "GameBoy", esrb_rating: "M", studio: "Nintendo")
Game.create(name: "The Legend of Zelda: A Link Between Worlds", system: "GameBoy", esrb_rating: "M", studio: "Nintendo")
Game.create(name: "Mario Kart 7", system: "GameBoy", esrb_rating: "M", studio: "Nintendo")
Game.create(name: "Super Mario 3D Land", system: "GameBoy", esrb_rating: "M", studio: "Nintendo")