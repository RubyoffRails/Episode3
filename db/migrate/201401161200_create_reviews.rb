class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :movie
      t.integer :rating
      t.string :reviewer
      t.string :synopsis
    end
  end
end