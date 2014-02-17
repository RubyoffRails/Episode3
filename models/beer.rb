class Beer < ActiveRecord::Base

	def to_s
		"\"#{name}\" , [#{kind_of}, #{country}, #{brewer}]"
	end

	def summarize
    "#{name} is a #{kind_of} from #{country}. Did you know?\n #{summary}.\n I rate it a #{rating} out of 5."
	end
end
