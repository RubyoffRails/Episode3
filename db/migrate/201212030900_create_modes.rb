class CreateModes < ActiveRecord::Migration
	def change
		create_table :modes do |t|
			t.string :name
			t.string :parent
			t.string :steps
		end
	end
end