require 'rubygems'
require 'bundler/setup'

include Gem::UserInteraction

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

# Panda and Tiger level commented out to complete Eagle level

# day_requested = ui.ask("What day would you like to watch TV?")

# puts "There are #{Show.count} in the database"

# # Tiger Level
# puts "Shows airing of #{day_requested.capitalize} are: \n"

# # Check if no shows air on the day reuested
# at_least_one = false;

# Show.all.each do |show|
# 	if ((day_requested.capitalize <=> show.day_of_week) == 0)
# 		at_least_one = true;
# 		puts show
# 	end
# end

# if !at_least_one
# 	puts "There are no shows airing on #{day_requested.capitalize}, please check spellings!"
# end

# Eagle Level
puts "There are #{Concert.count} concerts in the database"

# Ask user
name = ui.ask("What's your name?")
puts "Hi #{name.capitalize}!"

query = ui.ask("Who/Where would you like to listen to today?")
# Titalize the query
query = query.split.map(&:capitalize).join(' ')

# Check if there is atleast one match
at_least_one = false;

# Search in database
Concert.all.each do |concert|
	artist_match = concert.artist_name <=> query
	country_match = concert.location_country <=> query
	city_match = concert.location_city <=> query

	if (artist_match == 0 || country_match == 0 || city_match == 0)
		if !at_least_one
			puts "These concert(s) may be of interest to you:\n"
		end
		puts concert
		at_least_one = true
	end
end

# Check if atleast one match
if !at_least_one
	puts "Sorry #{name.capitalize}, I couldn't find any concerts to match your query."
end
