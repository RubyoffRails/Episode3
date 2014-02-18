class CreateBeers < ActiveRecord::Migration

	def change
		create_table :beers do |t|
			t.string :name
			t.string :country
			t.string :brewer
			t.string :kind_of
			t.integer :rating
			t.string :summary
			t.timestamps
		end
	end
end
