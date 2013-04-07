require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Game.count} games in the database:"
Game.all.each do |game|
	puts game
end

puts "\nHow many players do you have? (Enter 1-6)"
player_count = gets.chomp().to_i
puts "\nGames for #{player_count} player(s):"
Game.all.each do |game| 
	puts game if game.players_min <= player_count && game.players_max >= player_count
end