# Cleaning Out
Network.delete_all
Show.delete_all
Mode.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
abc = Network.create(name: "ABC")
pbs = Network.create(name: "PBS")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Modern Family", day_of_week: "Wednesday", hour_of_day: 21, network: abc)
Show.create(name: "Downton Abbey", day_of_week: "Sunday", hour_of_day: 21, network: pbs)
Mode.create(name: "Ionian", parent: "Major", steps: "1 2 3 4 5 6 7")
Mode.create(name: "Dorian", parent: "Major", steps: "1 2 b3 4 5 6 b7")
Mode.create(name: "Phrygian", parent: "Major", steps: "1 b2 b3 4 5 b6 b7")
Mode.create(name: "Lydian", parent: "Major", steps: "1 2 3 #4 5 6 7")
Mode.create(name: "Lydian Augmented", parent: "Melodic Minor", steps: "1 2 3 #4 #5 6 7")
Mode.create(name: "Super Locrian", parent: "Melodic Minor", steps: "1 b2 b3 b4 b5 b6 b7")