class Beer < ActiveRecord::Base

	def to_s
		"\"#{name}"\" , [#{kind_of}, #{country}, #{brewer}]"
	end

	def summary
	"Nova Shin is a Pilsner from Brazil. Did you know? . I rate it a 4.0 out of 5."
		"#{name} is a #{kind_of} from #{country}. Did you know?\n #{summary}.\n I rate it a #{rating} out of 5."
	end
end