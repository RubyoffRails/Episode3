class CreateConcerts < ActiveRecord::Migration
	def change
		create_table :concerts do |t|
			t.string :artist_name
			t.string :location_country
			t.string :location_city
			t.integer :hour_of_day
		end
	end
end
