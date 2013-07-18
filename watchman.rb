require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r }
require "./db/seed"

def horizontal_line
  '-' * 80
end
puts "All authors in our database:"

puts horizontal_line
Author.all.each {|author| puts author}
puts horizontal_line

puts "Which author are you interested in?"
name = gets.chomp

author = Author.where(name: name).first

if author
  puts "Books written by #{name}:"
  author.books.each_with_index {|book, i| puts "#{i+1}. #{book.title}"}
else
  puts "Sorry, we don't have any book written by #{name}."
end