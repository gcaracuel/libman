class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :fax
      t.string :telf_representante
      t.string :email
      t.string :web
      t.boolean :activo

      t.timestamps
    end
  end
end
