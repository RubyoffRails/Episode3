require 'pg'
require 'active_record'
require 'yaml'


connection_details = YAML::load(File.open('config/database.yml'))


# Setup out connection_details
ActiveRecord::Base.establish_connection(connection_details.merge({database: 'postgres', schema_search_path: 'public'}))
# create the 'tv' database
ActiveRecord::Base.connection.create_database(connection_details.fetch(:database)) rescue nil
# connect to it
ActiveRecord::Base.establish_connection(connection_details)
# Migrate all the things
ActiveRecord::Migrator.migrate("db/migrate/")
 