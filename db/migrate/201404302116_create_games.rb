class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :system
      t.string :esrb_rating
      t.string :studio
    end
  end
end
