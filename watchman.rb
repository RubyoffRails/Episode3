require 'rubygems'
require 'bundler/setup'

require './db/setup'
Dir.glob('./models/*').each { |r| require r}
require './db/seed'

puts "There are #{Show.count} in the database"

puts 'What day would you like to search?'
day = gets.strip.capitalize
results = Show.where(day_of_week: day)
if results == []
  puts "There are no shows on #{day}"
else
  puts "These are the shows that are playing on #{day}"
  results.each do |show|
    puts show
  end
end