class CreateAuthorsAndBooks < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.timestamps
    end

    create_table :books do |t|
      t.string :title
      t.references :author
      t.timestamps
    end
  end
end