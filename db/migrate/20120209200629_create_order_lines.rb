class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.integer :order_id
      t.integer :book_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
