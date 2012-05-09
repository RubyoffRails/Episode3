class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.timestamps
    end
    
    create_table :ingredients do |t|
      t.string :name
      t.references :recipe # Cool! I learnt that this creates :ingriedient_id for you!
      t.timestamps
    end
  end
end