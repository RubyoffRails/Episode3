require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"

Network.all.each do |network|
	puts "Shows airing on #{network}"
	network.shows.each do |show|  #this is really cool
		puts show
	end
end
puts "------------------------"

puts "Which day do you want to watch the show?"
day = gets.chomp().capitalize
puts "Shows airing on #{day}"

Show.all.each do |show|
	puts show if show.day_of_week == day
end

puts "-------------------------"

Coffee.all.each do |coffee|
  puts coffee.name
end

puts "Which coffee do you want to know more about?"
cof = gets.chomp().capitalize
Coffee.all.each do |coffee|
  puts coffee if coffee.name == cof
end
