require 'rubygems'
require 'bundler/setup'
require 'io/console'

require './db/setup'
Dir.glob('./models/*').each { |r| require r }
require './db/seed'

##
# Begin the program by asking the user what they would like to do.
##
def start
  puts <<-EOF
What would you like to do today?

  (1)I'd like to see what shows are playing.

  (2)I'd like to see what games I have.

EOF
  sel = STDIN.getch.to_i
  case sel
    when 1
      show_search
    when 2
      game_search
  end
end


def show_search
  days_of_week = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday]

  puts "There are #{Show.count} shows in the database\n\n"

  puts 'What day would you like to search?'
  day_selection = gets.strip.capitalize
  ## For the glory of eye candy
  puts "Searching...\n\n"
  sleep 1
  if day_selection 
    results = Show.where(day_of_week: day_selection)
    if results == []
      puts "There are no shows on #{day_selection}"
    else
      puts "These are the shows that are playing on #{day_selection}"
        results.each do |show|
        puts show
      end
    end
  end
end


def game_search
  game_systems = %w[Xbox360 XboxOne PS3 PS4 GameBoy]

  puts "There are #{Game.count} games in the database.\n\n"

  puts "What system do you want to search on?\n\n"
  ## Pull each system out of game_systems and label them by number.
  game_systems.each do |system|
    puts "  (#{game_systems.index(system)+1}) #{system}"
  end
  user_selection = STDIN.getch.to_i-1
  puts "Searching...\n\n"
  sleep 1
  system_selection = game_systems[user_selection]
  if system_selection
      results = Game.where(system: system_selection) 
     if results == []
      puts "There are no games listed for that system."
    else
      puts "These are the games you have for #{system_selection}:\n\n"
      results.each do |game|
        puts game
    end
  end
  end
end

start