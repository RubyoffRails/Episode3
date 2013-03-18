class CreateCertifications < ActiveRecord::Migration
  def change
    create_table :certifications do |t|
      t.string :name
      t.timestamps
    end

    change_table :wrecks do |t|
      t.references :certification
    end
  end
end