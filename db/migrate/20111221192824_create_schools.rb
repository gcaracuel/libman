class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :user_id
      t.string :cif
      t.string :fax
      t.string :web
      t.boolean :active

      t.timestamps
    end
  end
end
