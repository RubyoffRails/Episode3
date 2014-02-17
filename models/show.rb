class Show < ActiveRecord::Base
	belongs_to :network

	validates_presence_of :name

	def self.by_day(day_of_week)
		Show.where(:day_of_week => day_of_week)
	end

	def to_s
		"#{name} airs at #{hour_of_day}:00 #{day_of_week} on #{network} "
	end
end
