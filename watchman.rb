require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"


# Tiger level
#puts "What day do you want to watch shows?"
#Show.day_of_week = $stdin.gets


puts "There are #{Show.count} in the database"

Network.all.each do |network|
	puts "Shows airing on #{network}"
	network.shows.each do |show|
		puts show
	end	
end

#Network.all.each do |day_of_week|
#	puts "Shows airing on #{day_of_week}"
#	network.shows.each do |show|
#		puts show
#	end	
#end
