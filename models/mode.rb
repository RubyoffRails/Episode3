class Mode < ActiveRecord::Base

	def to_s
		"#{name} (#{parent} mode)"
	end

end