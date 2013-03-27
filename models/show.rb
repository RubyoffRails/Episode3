class Show < ActiveRecord::Base
	belongs_to :network

	validates_presence_of :name

	def to_s
		"#{id.inspect}: #{name} airs at #{day_of_week}:#{hour_of_day}:00 on #{network} "
	end
end
