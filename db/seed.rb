# Cleaning Out
Author.delete_all

brust = Author.create({
  :first_name => 'Steven',
  :last_name => 'Brust',
  :birthdate => '11231955'
})

crais = Author.create({
  :first_name => 'Robert',
  :last_name => 'Crais',
  :birthdate => '06201953'
})

Book.delete_all

Book.create({
  :name => 'Jhereg',
  :author => brust,
  :publication_year => '1983',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Yendi',
  :author => brust,
  :publication_year => '1984',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Teckla',
  :author => brust,
  :publication_year => '1987',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Taltos',
  :author => brust,
  :publication_year => '1988',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Phoenix',
  :author => brust,
  :publication_year => '1990',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Athyra',
  :author => brust,
  :publication_year => '1993',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Orca',
  :author => brust,
  :publication_year => '1996',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Dragon',
  :author => brust,
  :publication_year => '1998',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Issola',
  :author => brust,
  :publication_year => '2001',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Dzur',
  :author => brust,
  :publication_year => '2006',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Jhegaala',
  :author => brust,
  :publication_year => '2008',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Iorich',
  :author => brust,
  :publication_year => '2010',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'Tiassa',
  :author => brust,
  :publication_year => '2011',
  :genre => 'fantasy',
  :series => 'Taltos'
})
Book.create({
  :name => 'The Monkey\'s Raincoat',
  :author => crais,
  :publication_year => '1987',
  :genre => 'detective',
  :series => 'Cole'
})
Book.create({
  :name => 'Stalking the Angel',
  :author => crais,
  :publication_year => '1989',
  :genre => 'detective',
  :series => 'Cole'
})
Book.create({
  :name => 'Lullaby Town',
  :author => crais,
  :publication_year => '1992',
  :genre => 'detective',
  :series => 'Cole'
})
Book.create({
  :name => 'Free Fall',
  :author => crais,
  :publication_year => '1993',
  :genre => 'detective',
  :series => 'Cole'
})
Book.create({
  :name => 'Voodoo River',
  :author => crais,
  :publication_year => '1995',
  :genre => 'detective',
  :series => 'Cole'
})
Book.create({
  :name => 'Sunset Express',
  :author => crais,
  :publication_year => '1996',
  :genre => 'detective',
  :series => 'Cole'
})
