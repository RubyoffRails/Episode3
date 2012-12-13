require 'rubygems'
require 'bundler/setup'
require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "What day do you want to watch tv?"
user_input = gets.chomp

Show.all.each  do  |show|
  if  user_input.casecmp(show.day_of_week) == 0
    puts show
  end
end

2.times { puts "\n" }

puts "Here is a partial list of books I own"
puts Book.all
2.times { puts "\n" }

puts "What author or book would you like to know more about?"
user_input = gets.chomp

book = Book.where(author: user_input).all
puts book
