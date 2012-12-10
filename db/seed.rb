# Cleaning Out
Network.delete_all
Show.delete_all
Sport.delete_all
# Create Networks
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
# Create Shows
Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: "How I met your mother", day_of_week: "Wednesday", hour_of_day: 20, network: nbc)
Show.create(name: "Modern Family", day_of_week: "Monday", hour_of_day: 19, network: nbc)
# Create Sports
Sport.create(name: "Rugby", description: "Rugby is a style of football named after Rugby School in the United Kingdom. It is seen most prominently in two current sports, rugby league and rugby union.")
Sport.create(name: "Tennis", description: "Tennis is a sport usually played between two players using a racquet and ball. The object of the game is to play the ball in such a way that the opponent is not able to hit a good return.")
Sport.create(name: "Golf", description: "Golf is a precision sport, in which competing players use many types of clubs to hit balls into a series of holes using the fewest number of strokes.")
Sport.create(name: "Boxing", description: "Boxing is a combat sport in which two people engage in a contest of strength, reflexes and endurance by throwing punches at an opponent with gloved hands.")
Sport.create(name: "Soccer", description: "Soccer is a sport played between two teams of eleven players with a spherical ball.")
  
