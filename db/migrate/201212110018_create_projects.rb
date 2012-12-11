class CreateProjects < ActiveRecord::Migration
	def change
		create_table :projects do |t|
			t.string :name
			t.string :category
			t.string :recipient
			t.timestamps
		end
	end
end
