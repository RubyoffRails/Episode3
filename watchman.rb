require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "***********************"
puts "* Welcome to WATCHMAN *"
puts "***********************"
puts "There are #{Show.count} in the database"
puts ""
puts "What day would you like to watch shows?"
print "> "

day_of_week = gets.chomp.downcase

Network.all.each do |network|
  network.shows.each do |show|
    puts show if show.day_of_week.downcase == day_of_week
  end
end