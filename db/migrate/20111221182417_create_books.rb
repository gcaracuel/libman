class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :editor_id
      t.integer :author_id
      t.string :titulo
      t.string :subtitulo
      t.float :precio
      t.boolean :digital
      t.integer :num_edicion
      t.string :ean
      t.string :isbn
      t.date :fecha_publicacion
      t.integer :stock
      t.string :idioma
      t.text :resumen
      t.string :situacion
      t.integer :iva

      t.timestamps
    end
  end
end
