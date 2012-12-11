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

if shows.size != 0
	shows.each do |s|
		puts "#{s.name} at #{s.hour_of_day} on #{s.network}"
	end
else
	puts 'No shows found.'
end

# output all my knitting projects
puts
puts "My current knitting projects: "
Project.all.each do |project|
	puts project
end

puts
puts "Which project would you like to see details for?"
answer = gets.chomp

counter = 0
Project.all.each do |proj|
	if proj.name == answer
		counter += 1
		puts proj
		break
	end
end

puts 'Sorry, project not found.' if counter == 0
