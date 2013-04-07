class Publisher < ActiveRecord::Base
	has_many :games

	def to_s
		name
	end
end
