class Recipe < ActiveRecord::Base
	validates_presence_of :name, :ingredients, :steps

	def pretty_steps
		step_out = ""
		steps.split(".").each_with_index { |step, step_num| step_out += "#{step_num+1}: #{step}\n"}
		return step_out
	end
	

	def to_s
		"#{name}\nIngredients: #{ingredients.split(",")}\nSteps:\n#{pretty_steps}"
	end
end