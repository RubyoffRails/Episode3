require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"
puts "What day would you like to watch tv?"
day = gets.chomp

Network.all.each do |network|
	network.shows.where(:day_of_week => day).each do |show|
	  puts "Shows airing on #{network}"
		puts show
	end	
end
