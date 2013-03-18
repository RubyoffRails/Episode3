require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database.\n"

Network.all.each do |network|
  puts "\nShows airing on #{network}"
  network.shows.each do |show|
    puts show
  end 
end

puts "\nWhat day would you like to watch TV?"
day = gets

shows = Show.where("day_of_week = ?", day.chomp)

unless shows.empty?
  puts "Shows on #{day.chomp}:"
  shows.each do |show|
    puts show.to_s
  end
else
  puts "No shows on that day"
end

puts "\n\nWrecks:\n"

wrecks = Wreck.order('depth ASC')

wrecks.all.each do |wreck|
  puts wreck
end

puts "\nWhich wreck would you like to know more?"
wreck_cli = gets

wrecks = Wreck.where("name = ?", wreck_cli.chomp)

unless wrecks.empty?
  wrecks.each do |wreck|
    puts wreck.full_to_s
  end
else
  puts "Sorry - there was no match."
end