class CreateShows < ActiveRecord::Migration
	def change
		create_table :shows do |t|
			t.string :name
			t.string :day_of_week		
			t.integer :hour_of_day
		end
	end
end  