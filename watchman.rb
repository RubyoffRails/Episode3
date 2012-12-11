require 'rubygems'
require 'bundler/setup'
require "./db/setup"

Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "What day do you want to watch tv?"
user_input = gets.chomp

Show.all.each  do  |s|
  if user_input.casecmp(s.day_of_week.to_s) == 0
    puts s
  end
end
