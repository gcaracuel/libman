class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :supplier_id
      t.integer :numero
      t.date :fecha
      t.float :importe
      t.boolean :activo

      t.timestamps
    end
  end
end
