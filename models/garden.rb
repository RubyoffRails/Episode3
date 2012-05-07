class Garden < ActiveRecord::Base
	has_many :plants

	def to_s
		category
	end
end
