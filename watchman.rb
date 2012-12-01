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
  dow = { Monday: 1, Tuesday: 2, Wednesday: 3, Thursday: 4, Friday: 5,  Saturday: 6, Sunday: 7 }
  puts "Pick a day of week: Use 1 for Monday ... 7 for Sunday"
  user_pick = dow.key ( gets.to_i )

  Network.all.each do |network|
    network.shows.each { |show| puts show if show.day_of_week == user_pick.to_s }
  end

end

find_show
