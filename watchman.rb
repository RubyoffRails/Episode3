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

def find_shows
  puts "What day do you want to watch shows ?"
  dow = gets.chomp

  shows = Show.where(:day_of_week => dow)

  puts "Airing on #{dow}:"
  shows.each do |show|
    puts show
  end
end

find_shows