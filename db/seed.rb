# Cleaning Out
Network.delete_all
Show.delete_all
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Breaking Bad", day_of_week: "Friday", hour_of_day: 20, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Whitney", day_of_week: "Wednesday", hour_of_day: 20, network: nbc)
Show.create(name: "FNL", day_of_week: "Friday", hour_of_day: 21, network: nbc)

# Certifications
Certification.delete_all
ow = Certification.create(name: "Open Water")
aow = Certification.create(name: "Advanced Open Water")
deep = Certification.create(name: "Deep Specialty")
trimix1 = Certification.create(name: "Entry Level Trimix")
trimix2 = Certification.create(name: "Expedition Trimix")

# Wrecks
Wreck.delete_all
Wreck.create(name: "Spiegel Grove", depth: 60, location: 'Florida', certification: ow)
Wreck.create(name: "Duane", depth: 100, location: 'Florida', certification: aow)
Wreck.create(name: "Cape Breton", depth: 130, location: 'Nanaimo', certification: deep)
Wreck.create(name: "Andrea Doria", depth: 210, location: 'New Jersey', certification: trimix1)
Wreck.create(name: "Thistlegorm", depth: 100, location: 'Red Sea', certification: aow)
Wreck.create(name: "USS Atlanta", depth: 400, location: 'Guadalcanal', certification: trimix2)
Wreck.create(name: "SS President Coolidge", depth: 70, location: 'Vanauatu', certification: ow)