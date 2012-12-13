require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} shows in the database"
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

puts
puts "Great, now I also have some sports I can tell you about."
puts "Check out all the sports I know:"
Sport.all.each do |sport|
  puts sport
end
puts "Now choose one and enter it below to find out more about it."
print "~>"

input = gets.chomp.capitalize
sport = Sport.where(name: input).first

while sport.nil?
  puts "Sorry, I can't do that right now."
  puts "Try another sport..."
  print "~>"
  input = gets.chomp.capitalize
  sport = Sport.where(name: input).first
end

puts
puts "A not so fun fact about #{sport.name}:"
puts

Sport.where(name: input).each do |sport|
  puts sport.description
end
