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

puts "\n\n"

Garden.all.each do |garden|
  puts garden
end

puts "\nWhat would you like to learn more about?"
learn_more = gets.chomp

match = 0
Garden.all.each do |garden|  
  if learn_more =~ /#{garden.category}/i    
    match = 1
    p = garden.plants.map do |plant|
      plant.name
    end
    puts "\n#{garden}: #{p.to_s}"
  end
end

puts "sorry Dave, I can't do that right now (no matches for entered text #{learn_more})" if match == 0