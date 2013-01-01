class CreateEditors < ActiveRecord::Migration
  def change
    create_table :editors do |t|
      t.string :nombre
      t.string :web
      t.string :isbn
      t.boolean :activo

      t.timestamps
    end
  end
end
