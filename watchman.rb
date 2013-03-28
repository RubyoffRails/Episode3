require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"
puts "What day of the week would you like to watch a show?"
day_of_week = gets.chomp

show_in_entered_day_of_week = false
Network.all.each do |network|
	network.shows.each do |show|
		if show.day_of_week == day_of_week
		  puts "#{show} on #{network}"
		  show_in_entered_day_of_week = true
		end
	end
end
puts "no shows air on #{day_of_week}" unless show_in_entered_day_of_week
puts "\n\n\n\n"


puts "These are the all the dishes in the database :"
Recipe.all.each do |recipe|
	puts "#{recipe}"
end
puts "What would you like to make?"
dish = gets.chomp
recipe_exists = false
Recipe.all.each do |recipe|
	if recipe.dish == dish
	  puts "This is how you make #{dish} :"
	  puts "#{recipe.instructions}"
	  recipe_exists = true
	end
end
puts "Sorry, #{dish} does not exist in the database" unless recipe_exists
