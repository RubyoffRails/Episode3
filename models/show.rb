class Show < ActiveRecord::Base
	belongs_to :network

	validates_presence_of :name

	def to_s
		"#{name} airs on #{day_of_week} at #{hour_of_day}:00 on #{network} "
	end
end
