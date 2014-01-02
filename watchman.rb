# require 'rubygems'
# require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

def search_by_day(day)
	Show.where(day_of_week: day)
end

puts "There are #{Show.count} in the database"

puts "What day of the week to search?"
day = STDIN.gets.chomp.capitalize
results = search_by_day(day)



Network.all.each do |network|
	puts "Shows airing on #{network}"
	results.each do |show|
		puts show if show.network == network
	end
end

puts "Here are all the recipes"
Recipe.all.each { |recipe| puts recipe }

puts "What recipe would you like to learn more about?"
recipe_search = STDIN.gets.chomp.capitalize
recipe_result = Recipe.where(name: recipe_search)
recipe_result.empty? ? puts("Sorry we cannot find that recipe") : recipe_result.each { |recipe| puts recipe }
