class Project < ActiveRecord::Base
	validates_presence_of :name

	belongs_to :yarn
	belongs_to :needle

	def to_s
		"\"#{name}\", [#{category}, #{recipient}, #{needle}, #{yarn}]"
	end
end
