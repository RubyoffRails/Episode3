class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.timestamps
    end

    change_table :books do |t|
      t.references :author
    end
  end
end
