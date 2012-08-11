class Character < ActiveRecord::Base
  belongs_to :book

	validates_presence_of :name

	def to_s
		"#{name}"
	end
end
