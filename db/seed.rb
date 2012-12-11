# Cleaning Out
Network.delete_all
Show.delete_all
Needle.delete_all
Yarn.delete_all
Project.delete_all

# set up
amc = Network.create(name: "AMC")
nbc = Network.create(name: "NBC")
cbs = Network.create(name: "CBS")

Show.create(name: "Mad Men", day_of_week: "Sunday", hour_of_day: 22, network: amc)
Show.create(name: "Community", day_of_week: "Thursday", hour_of_day: 20, network: nbc)
Show.create(name: 'Elementary', day_of_week: 'Thursday', hour_of_day: 22, network: cbs)
Show.create(name: 'Person of Interest', day_of_week: 'Thursday', hour_of_day: 21, network: cbs)

dpns3 = Needle.create(category: 'dpns', size: 3)
dpns2 = Needle.create(category: 'dpns', size: 2)
str8 = Needle.create(category: 'straights', size: 8)

wool_worsted = Yarn.create(material: 'merino wool', weight: 'worsted')
acrylic_sock = Yarn.create(material: 'acrylic', weight: 'sock')

Project.create(name: 'Birthday Present', category: 'socks', needle: dpns3, yarn: acrylic_sock, recipient: 'Yuki')
Project.create(name: 'Bro Graduation Present', category: 'hat', needle: str8, yarn: wool_worsted, recipient: 'Patrick')
Project.create(name: 'Bro New Year Present', category: 'scarf', needle: str8, yarn: wool_worsted, recipient: 'Chris')
Project.create(name: 'Practice Project', category: 'socks', needle: dpns2, yarn: acrylic_sock, recipient: 'self')
Project.create(name: 'Just Because', category: 'scarf', needle: str8, yarn: wool_worsted, recipient: 'Darryl')
