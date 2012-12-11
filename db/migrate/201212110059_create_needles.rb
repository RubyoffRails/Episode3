class CreateNeedles < ActiveRecord::Migration
	create_table :needles do |t|
		t.string :category
		t.string :size
		t.timestamps
	end

	change_table :projects do |t|
		t.references :needle
	end
end
