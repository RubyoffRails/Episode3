require 'rubygems'
require 'bundler/setup'
require 'date'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r}
require "./db/seed"

puts "There are #{Show.count} in the database"

def ask_user_for_valid_day_of_week
	user_date = gets.chomp.capitalize
	days_of_the_week = Date::DAYNAMES
	count = 0
	max_number_of_tries = 2
	while days_of_the_week.index(user_date).nil? && count < max_number_of_tries
		puts "That is not a valid day of the week. Please try again."
		user_date = gets.chomp.capitalize
		count += 1
	end
	if count == max_number_of_tries
		user_date = days_of_the_week[Time.new.wday]
		puts "No valid date entered, giving shows for today (#{user_date})"
	end
	user_date
end

puts "What day of the week do you want to watch shows?"
day_of_interest = ask_user_for_valid_day_of_week

Network.all.each do |network|
	puts "Shows airing on #{network}"
	network.shows.each do |show|
		puts show if show.day_of_week == day_of_interest
	end	
end