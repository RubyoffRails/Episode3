class CreatePublishers < ActiveRecord::Migration
	def change
		create_table :publishers do |t|
			t.string :name
			t.timestamps
		end

		change_table :games do |t|
			t.references :publisher
			t.timestamps
		end
	end
end
