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

prompt = '/>' + '\n'
puts prompt + "On which day would you like to watch TV?"
input =  get.chomp
puts prompt + "On #{input.titlecase}s, you can watch:\n"
shows_list = Show.by_day(input)
	shows_list.each do |show|
		puts "#{show.name} at #{show.hour_of_day} on #{show.network}"
	end

puts "\n----------------------------\n"
Beers.all.each do |beer|
	puts beer	
end
