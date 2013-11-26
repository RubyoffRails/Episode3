class Concert < ActiveRecord::Base
	validates_presence_of :artist_name

	def to_s
		"#{artist_name} plays in #{location_city}, #{location_country} at #{hour_of_day}"
	end
end
