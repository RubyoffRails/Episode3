require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"

# output by network
#Network.all.each do |network|
#	puts "Shows airing on #{network}"
#	network.shows.each do |show|
#		puts show
#	end	
#end

# output all shows
Show.all.each do |show|
	puts show
end

puts
puts "What day are you interested in? (eg, Friday)"
answer = gets.chomp

shows = []
Show.all.each do |show|
	if show.day_of_week == answer
		shows << show
	end
end

if answer.empty?
	puts 'No day was provided. No shows for you!'
	exit
end

puts "Shows for #{answer}:"

if shows.size != 0
	shows.each do |s|
		puts "#{s.name} at #{s.hour_of_day} on #{s.network}"
	end
else
	puts 'None'
end
