require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"
puts
puts "Hey Dawg, i heard you like to watch tv shows?"
puts "On which weekday you like to watch some?"
puts
weekday = gets.chomp.capitalize

Network.all.each do |network|
  network.shows.where(day_of_week: weekday).each do |show|
    puts show
  end
  
  
end
