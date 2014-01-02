# Cleaning Out
Network.delete_all
Show.delete_all
Recipe.delete_all

amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
showtime = Network.create(name: "Showtime")
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "Hannibal", day_of_week: "Monday", hour_of_day: 20, network: nbc)
Show.create(name: "Homeland", day_of_week: "Thursday", hour_of_day: 20, network: showtime)

Recipe.create(name: "Hummus", ingredients: "chickpeas,tahini,olive oil,salt,lemon juice,garlic,cumin,water", steps: "Blend tahini and lemon juice.Add and blend olive oil, garlic, cumin and salt.Add and blend chickpeas.Add and blend water to desired consistency.")
Recipe.create(name: "Biscuits", ingredients: "flour,baking powder,salt,butter,milk", steps: "Mix flour, salt, and baking soda.Add butter and mix till butter is pea sized.Add milk and mix lightly.Flip onto a floured surface and pat down to desired thickness.Cut biscuits out of dough, reforming dough when necessary.Bake at 400 degrees for 12 minutes.")