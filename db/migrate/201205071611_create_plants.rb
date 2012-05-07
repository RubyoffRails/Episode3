class CreatePlants < ActiveRecord::Migration
	def change
		create_table :plants do |t|
			t.string :name
			t.references :garden
			t.timestamps
		end
	end
end