class CreateGames < ActiveRecord::Migration
	def change
		create_table :games do |t|
			t.string :name
			t.string :designer
			t.integer :players_min
			t.integer :players_max
		end
	end
end
