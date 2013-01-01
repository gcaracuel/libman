class CreateRefundLines < ActiveRecord::Migration
  def change
    create_table :refund_lines do |t|
      t.integer :refund_id
      t.integer :book_id
      t.integer :cantidad
      t.float :precio
      t.integer :iva

      t.timestamps
    end
  end
end
