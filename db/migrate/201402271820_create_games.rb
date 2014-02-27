class CreateGames < ActiveRecord::Migration
	def change
		create_table :games do |t|
		t.string :name
		t.string :genre
		t.string :teaser
		end
	end
end
