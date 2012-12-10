require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"
puts 
puts "What day would you like to watch shows?"
puts 
print '~>'
day = gets.chomp.capitalize

Network.all.each do |network|
  network.shows.where(day_of_week: day).each do |show|
    puts show 
  end	
end
