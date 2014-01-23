require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "***********************"
puts "* Welcome to WATCHMAN *"
puts "***********************"
puts "There are #{Review.count} reviews in the database:"
puts ""
Review.all.each do |review|
  puts review.movie
end
puts "What movie review would you like to see?"
print "> "

movie_selection = gets.chomp

my_selection = Review.where(movie: movie_selection)
puts "Oops... we don't have a review for #{movie_selection} yet." if my_selection.empty?
my_selection.each { |review| puts review }