class CreateInvoiceLines < ActiveRecord::Migration
  def change
    create_table :invoice_lines do |t|
      t.integer :invoice_id
      t.integer :book_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
