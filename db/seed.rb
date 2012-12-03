# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
abc = Network.create(name: "ABC")
pbs = Network.create(name: "PBS")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Modern Family", day_of_week: "Wednesday", hour_of_day: 21, network: abc)
Show.create(name: "Downton Abbey", day_of_week: "Sunday:", hour_of_day: 21, network: pbs)
