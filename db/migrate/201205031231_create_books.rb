class CreateBooks < ActiveRecord::Migration

  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.integer :rating
    end
  end

end
