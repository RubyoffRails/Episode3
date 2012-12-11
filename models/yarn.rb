class Yarn < ActiveRecord::Base
	has_many :projects

	def to_s
		"#{weight} #{material}"
	end
end
