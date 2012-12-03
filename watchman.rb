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

def find_show
  dow = { 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday", 4 => "Thursday", 5 => "Friday", 6 => "Saturday", 7 => "Sunday" }
  puts "Pick a day of week: Use 1 for Monday ... 7 for Sunday"
  user_pick = dow.fetch( gets.to_i ) { puts "sorry, not found" }

  Network.all.each do |network|
    network.shows.each { |show| puts show if show.day_of_week == user_pick }
  end

end

find_show