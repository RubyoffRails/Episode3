require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "Would you like to check TV shows or games?"

decision = gets.chomp

case decision
when "TV shows" || "shows"

puts "There are #{Show.count} shows in the database"

puts "When would you like to watch your show?"

day_to_watch = gets.chomp

Network.joins(:shows).where("shows.day_of_week" => day_to_watch).each do |network|
	puts "Shows airing on #{network}"
		network.shows.each do |show|
			unless show.day_of_week != day_to_watch
			puts show #show.to_s
			end
		end	
end

when "games"

puts "There are #{Game.count} games in the database"

puts "You can choose one of the following games:"

Game.all.each do |game|
	puts game.to_s
end

puts "Which game would you like to know more about?"

game_selected = gets.chomp

game_result = Game.where("name" => game_selected)

unless game_result.blank?

game_result.each do |game|
	puts game.to_s
end

else
puts "sorry Dave, I can't do that right now"
end
else
puts "sorry Dave, I can't do that right now"
end
