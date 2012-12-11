class Needle < ActiveRecord::Base
	has_many :projects
	
	def to_s
		"#{size} #{category}"
	end
end
