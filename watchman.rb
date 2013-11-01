require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"
require "./db/seeds"


puts "There are #{Show.count} in the database"

Network.all.each do |network|
	puts "Shows airing on #{network}"
	network.shows.each do |show|  #this is really cool
		puts show
	end
end
puts "------------------------"
Show.all.each do |show|
	puts show
end
puts "------------------------"
puts "Which day do you want to watch the show?"
day = gets.chomp().capitalize
puts "Shows airing on #{day}"
Show.all.each do |show|
	puts show if show.day_of_week == day
end

puts "-------------------------"


Food.all.each do |food|
	puts food
end
