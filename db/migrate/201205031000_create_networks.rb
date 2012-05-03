class CreateNetworks < ActiveRecord::Migration
	def change
		create_table :networks do |t|
			t.string :name
			t.timestamps
		end

		change_table :shows do |t|
			t.references :network
			t.timestamps
		end
	end
end
