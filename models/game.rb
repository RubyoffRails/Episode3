class Game < ActiveRecord::Base
	validates_presence_of :name, :genre, :teaser
	def to_s
		"Name: #{name}\ngenre: #{genre}\nteaser: #{teaser}\n"
	end
end 