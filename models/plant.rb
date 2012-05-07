class Plant < ActiveRecord::Base
	belongs_to :garden

	validates_presence_of :name

	def to_s
		"#{name}"
	end
end