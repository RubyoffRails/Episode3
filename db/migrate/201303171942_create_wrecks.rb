class CreateWrecks < ActiveRecord::Migration
  def change
    create_table :wrecks do |t|
      t.string :name
      t.integer :depth
      t.string :location
      t.timestamps
    end
    
  end
end
