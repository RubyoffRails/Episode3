class Game < ActiveRecord::Base
	belongs_to :publisher

	validates_presence_of :name

	def to_s
		"#{designer}'s \"#{name}\" for #{players_min}-#{players_max} players published by #{publisher}." # is for #{hour_of_day}:#{day_of_week}:00 on #{network} "
	end
end
