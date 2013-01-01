class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :supplier_id
      t.integer :numero
      t.date :fecha
      t.float :importe
      t.boolean :activo

      t.timestamps
    end
  end
end
