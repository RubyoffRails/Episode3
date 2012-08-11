class CreateBooks < ActiveRecord::Migration
	def change
    create_table :characters do |t|
      t.string :name
      t.references :book
      t.timestamps
    end

		create_table :books do |t|
			t.string :title
			t.string :author
			t.integer :pages
      t.timestamps
		end
	end
end
