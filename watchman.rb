require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "\n\nPanda Level\n"
puts "----------------------"
puts "There are #{Show.count} in the database"

Network.all.each do |network|
	puts "Shows airing on #{network}"
	network.shows.each do |show|
		puts show
	end
end

puts "\n\nTiger Level\n"
puts "----------------------"
puts "On which day would you like to watch TV?"
input = gets.chomp.titlecase
puts "On #{input.titlecase}s, you can watch:\n"
show_list = Show.where(day_of_week: "#{input}")
	show_list.each do |show|
		puts "#{show.name} at #{show.hour_of_day}:00 on #{show.network}"
	end

puts "\n\nEagle (Advanced) Level\n"
puts "----------------------"
Beer.all.each do |beer|
  puts beer
end

puts "\n\nWhat would you like to learn more about?"
input = gets.chomp.titlecase

beer = Beer.find_by_name(input)
if beer
	puts "Did you know?\n"
  puts beer.summarize
else
	puts "Sorry, I can't do that right now."
end
