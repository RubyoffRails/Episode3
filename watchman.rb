require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"
puts
puts "What day do you want to watch shows?"
puts 
print '~>'
day = gets.chomp.capitalize

Network.all.each do |network|
  network.shows.where(day_of_week: day).each do |show|
    puts show
  end
end

puts "Cool, now I also enjoy cooking and have some great recipes."
puts "Enter a recipe below e.g. 'Cornbread Muffins' or 'Tacos' and I'll dish out the ingredients"
puts
print '~>'
input = gets.chomp.downcase

recipe = Recipe.where(name: input)
while recipe.empty?
  puts "Sorry, I can't do that right now. Please try again"
  print "~>"
  input = gets.chomp.downcase
  recipe = Recipe.where(name: input)
end

puts "The ingredients for %s are:" % recipe

Recipe.where(name: input).first.ingredients.each do |ingredient|
  puts ingredient
end
