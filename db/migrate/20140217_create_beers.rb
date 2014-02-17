class Beer ActiveRecord::Migration

	def change
		create_table :beers do |t|
			t.string :name
			t.string :country
			t.string :brewer
			t.string :kind_of
			t.float :rating
			t.text :summary
			t.timestamps
		end
	end
end