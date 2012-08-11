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

puts "\nWhich day would you like to watch shows on?"
day_of_week = gets.chomp
puts "Shows airing on #{day_of_week}'s"
shows = Show.where(:day_of_week => day_of_week)
if shows.count == 0
  puts "No shows found for this day"
else 
  shows.each do |show|
    puts show
  end
end

puts
Book.all.each do |book|
  puts book
end

puts "\nWhat would you like to learn more about?"
query = gets.chomp
books = Book.where("upper(title) like ?", "%#{query}%".upcase)
characters = Character.where("upper(name) like ?", "%#{query}%".upcase)
characters.each { |character| books << character.book if !books.include?(character.book) }
books.each do |book|
  puts book
end

puts "\nSame query again with where condition instead of merge:"
books = Book.includes(:characters)
  .where("upper(title) like ? or upper(characters.name) like ?", 
    "%#{query}%".upcase, "%#{query}%".upcase).uniq
puts books
