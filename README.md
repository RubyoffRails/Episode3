Episode3: Watchman -- Datastores in YML and Postgres
====================================================

Storing data in Postgres, with migrations, outside of Rails

Your Assignment
---------------

1. Download and install PostgreSQL (see show notes)
2. Clone, fork this repo and copy the config/database.yml.sample to config/database.yml, edit with values

Panda Level
-----------

1. Add 2 more TV shows to the seeds file
2. When I run `ruby watchman.rb`, have it output all TV shows

Tiger Level
-----------

1. Ask the user what day they want to watch shows?
2. Output only the shows matching that day of the week

Eagle (Advanced) Level
---------------------- 

4. Create a table (using the migrations) which represents a hobby of yours: Fishing, Sports, Cooking, etc.
3. When I run ruby watchman.rb
	* Fill the table with 5 records (Recipe.create)
	* Have it show me all the records, with a nicely implemented to_s method
  * Ask me (the user) what I want to show. Example, if you have Recipe with :name and :ingredients:

```
[Recipes.all]
"Cornbread Muffins", [corn, butter, oil]
"Tacos", [tortilla, avacado, shrimp]

What would you like to learn more about?

#[editor: if I enter "Tacos" I'll see the Tacos recipe. If I enter nutella, I see "sorry Dave, I can't do that right now"]
```

Show Notes
-----------

* [Postgres for Mac Installer](http://postgresapp.com/)
* [Postgres for Windows Installer](http://www.postgresql.org/download/windows/)
* Mac types can also: `brew install postgres` but the oneclick is very nice.

Copyright: Jesse Wolgamott, MIT License (See LICENSE)
