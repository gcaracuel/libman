class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nombre, :string

    add_column :users, :apellido1, :string

    add_column :users, :apellido2, :string

    add_column :users, :direccion, :string

    add_column :users, :telefono, :string

    add_column :users, :activo, :boolean

  end
end
