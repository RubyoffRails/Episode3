class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :publication_year
      t.string :genre
      t.string :series
      t.timestamps
    end
  end
end
