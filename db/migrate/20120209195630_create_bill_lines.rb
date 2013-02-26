class CreateBillLines < ActiveRecord::Migration
  def change
    create_table :bill_lines do |t|
      t.integer :bill_id
      t.integer :book_id
      t.integer :cantidad
      t.float :precio
      t.integer :iva

      t.timestamps
    end
  end
end
