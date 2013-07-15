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
  puts "1: Monday, 2: Tuesday, 3: Wednesday, 4: Thursday, 5: Friday, 6: Saturday, 7: Sunday or Q: Quit"
  STDOUT.write "Select a day [1~7 or Q]:"
  gets.chomp
end

while true
  day = select_day

  if day.upcase == 'Q'
    puts "Goodbye!"
    break
  end

  unless day.match(/^[1-7]$/)
    puts "No such day: '#{day}', please select again!"
    next
  end

  sday = WEEK_DAY[day]
  shows = Show.where(day_of_week: sday)

  if shows.empty?
    puts "No shows on #{sday}"
  else
    puts "Shows on #{sday}:"
    shows.each {|show| puts show}
  end

end
