class AddCodClienteToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :cod_cliente, :string

  end
end
