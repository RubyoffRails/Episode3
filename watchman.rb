require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*.rb').each { |r| require r}
require "./db/seed"

puts "Welcome! what day would you like to search for shows?
====================================================="
day_selected = gets.chomp

Network.all.each do |network|
network.shows.where(day_of_week: day_selected).each do |show|
	puts show
	end
end

#Network.all.each do |network|
#	puts "Shows airing on #{user_selection}"
#	network.shows.each do |show|
#		puts shows
#	end	
#end