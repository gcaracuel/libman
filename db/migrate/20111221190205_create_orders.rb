class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :supplier_id
      t.integer :numero
      t.date :fecha
      t.boolean :activo

      t.timestamps
    end
  end
end
