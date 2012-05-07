class CreateGardens < ActiveRecord::Migration
	def change
		create_table :gardens do |t|
			t.string :category
			t.timestamps
		end
	end
end