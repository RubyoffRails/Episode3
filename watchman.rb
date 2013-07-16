require 'rubygems'
require 'bundler/setup'

require "./db/setup"
Dir.glob('./models/*').each { |r| require r }
require "./db/seed"

WEEK_DAY = {
  '1' => "Monday",
  '2' => "Tuesday",
  '3' => "Wednesday",
  '4' => "Thursday",
  '5' => "Friday",
  '6' => "Saturday",
  '7' => "Sunday"
}

def select_day
  puts "-" * 80
  puts "Which week day do you want watch TV shows?"
  puts  WEEK_DAY.map {|k, v| "#{k}: #{v}"}.join(', ') + " or Q: Quit"
  print "Select a day [1~7 or Q]:"
  gets.chomp
end

while true
  answer = select_day

  if answer.upcase == 'Q'
    puts "Goodbye!"
    break
  end

  unless WEEK_DAY.keys.include?(answer)
    puts "No such day: '#{answer}', please select again!"
    next
  end

  selected_day = WEEK_DAY[answer]
  shows = Show.where(day_of_week: selected_day)

  if shows.empty?
    puts "No shows on #{selected_day}"
  else
    puts "Shows on #{selected_day}:"
    shows.each {|show| puts show}
  end

end
