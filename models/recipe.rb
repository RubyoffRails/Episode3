class Recipe < ActiveRecord::Base
	validates_presence_of :name, :ingredients, :steps

	def to_s
		puts "#{name}"
		puts "Ingredients: #{ingredients.split(",")}"
		puts "Steps:"
		step_num = 1
		steps.split(".").each do |step|
			puts "#{step_num}: #{step}\n"
			step_num += 1
		end
	end
end