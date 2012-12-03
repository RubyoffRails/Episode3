require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"

Network.all.each do |network|
	puts "Shows airing on #{network}"
	network.shows.each do |show|
		puts show
	end	
end

	puts "\nWhat day do you want to watch shows?"
  user_day = gets.chomp()

	shows_by_day = Show.where(day_of_week: user_day.capitalize)

	if shows_by_day.size == 0
		puts "\nSorry, no shows that day!"
	else
		puts "\nThere is #{shows_by_day.count} show on #{user_day.capitalize}:" if shows_by_day.size == 1
		puts "\nThere are #{shows_by_day.count} shows on #{user_day.capitalize}:" if shows_by_day.size > 1
		shows_by_day.each do |show_day|
			puts show_day
		end
	end
