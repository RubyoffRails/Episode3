class CreateYarns < ActiveRecord::Migration
	create_table :yarns do |t|
		t.string :material
		t.string :weight
		t.timestamps
	end

	change_table :projects do |t|
		t.references :yarn
	end
end
