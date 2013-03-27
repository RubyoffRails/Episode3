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

def search_again
  while true do
    puts "Search Again (Y/N)" 
    answer = gets.upcase[0]
    if answer == "Y"
      find_show
    else
      break
    end
  end
end


def find_show
  puts "What day do you want to watch TV?"
  day = gets.chomp

  shows = Show.find(:all, :conditions => {:day_of_week => day})
  
  unless shows.empty?  
    shows.each do |show|
      puts show
    end
  else
      puts "There was nothing found for #{day}"
  end
  search_again
end

find_show

