require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Author.count} authors in the database."

Author.all.each do |a|
  puts "\t#{a}"
end

print "Give the last name of the author whose books you want to see: "
author = gets.chomp

# I'm pretty sure that there's a better way to do this in SQL, but I'm
# not comfortable enough with SQL, so I'm doing it in Ruby.
books = Book.all.select { |b| b.author.last_name == author }

if books.count > 0
  books.each do |b|
    puts "\t#{b}"
  end
else
  puts "Sorry: no books by #{author}. Please check the names again."
end
