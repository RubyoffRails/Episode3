class Beer < ActiveRecord::Base

	def to_s
		"\"#{name}\" , [#{kind_of}, #{country}, #{brewer}]"
	end

	def summarize
    "#{name} is a #{kind_of} from #{country}.\n#{summary}.\nI rate it a #{rating} out of 5."
	end
end
