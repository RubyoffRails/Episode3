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

puts "\n"
puts "Enter a day to see whats on:"
day = gets.capitalize.gsub("\n",'')
puts "Searching for shows on #{day}"
Show.where(day_of_week: day).each do |show|
  puts show
end

puts "\n"
puts "Now lets cook some dinner"
puts "Here are all the recipes"
Recipe.all.each do |recipe|
  puts recipe
end
puts "\n"
puts "What would you like to learn more about:"
name = gets.capitalize.gsub("\n",'')
Recipe.where(name: name).each do |recipe|
  puts recipe
end
