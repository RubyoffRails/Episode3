require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"
puts "What day of the week would you like to watch a show?"
day_of_week = gets.chomp

count = 0
Network.all.each do |network|
	network.shows.each do |show|
		if show.day_of_week == day_of_week
		  puts "#{show} on #{network}"
		  count = count + 1
		end
	end
end
if count == 0
	puts "no shows air on #{day_of_week}"
end

puts "There are #{Recipe.count} recipes in the database"
Recipe.all.each do |recipe|
	puts "#{recipe}"
end
puts "What would you like to make?"
dish = gets.chomp
Recipe.all.each do |recipe|
	if recipe.dish == dish
	  puts "#{recipe}"
	end
end
