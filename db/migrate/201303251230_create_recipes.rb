class CreateRecipes < ActiveRecord::Migration
	def change
		create_table :recipes do |t|
			t.string :dish
			t.string :ingredient
		end
	end
end
