class Recipe < ActiveRecord::Base

	validates_presence_of :dish

	def to_s
		"#{dish} has the following ingredients #{ingredients} "
	end
end
