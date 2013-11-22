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
