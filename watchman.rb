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

puts "\nAll shows"
Show.all.each do |show|
	puts show
end

puts "\nWhat day do you want to watch a show?"
day = gets.chomp().capitalize
puts "\nShows on #{day}"
Show.all.each do |show| 
	puts show if show.day_of_week == day
end