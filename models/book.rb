class Book < ActiveRecord::Base
  has_many :characters

	validates_presence_of :title

	def to_s
		"#{title}, written by #{author} has #{pages} pages, characters: [#{characters.map { |c| c.to_s }.join(', ')}]"
	end
end
