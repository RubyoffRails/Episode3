require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"

def get_shows
  puts "Enter a day of the week to see the shows:"
  day = gets.chomp.downcase.capitalize
  unless Show.where(day_of_week: day).empty?
    Show.where(day_of_week: day).each { |s| puts s }
  else
    puts "There are no shows for #{day}"
  end
  continue
end

def continue
  puts "Do you want to continue searching? (Y/N)"
  answer = gets.chomp.upcase
  if answer == 'Y'
    get_shows
  elsif answer == 'N'
    exit
  else
    puts "Unknown answer..."
    continue
  end
end


get_shows