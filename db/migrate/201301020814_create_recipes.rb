class CreateRecipes < ActiveRecord::Migration
	def change
		create_table :recipes do |t|
			t.string :name
			t.text :ingredients
			t.text :steps
			t.timestamps
		end
	end
end