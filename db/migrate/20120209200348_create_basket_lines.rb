class CreateBasketLines < ActiveRecord::Migration
  def change
    create_table :basket_lines do |t|
      t.integer :book_id
      t.integer :basket_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
