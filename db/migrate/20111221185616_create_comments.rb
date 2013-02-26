class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :book_id
      t.integer :user_id
      t.string :titulo
      t.date :fecha
      t.text :contenido
      t.boolean :activo

      t.timestamps
    end
  end
end
