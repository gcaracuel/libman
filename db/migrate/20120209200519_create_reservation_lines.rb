class CreateReservationLines < ActiveRecord::Migration
  def change
    create_table :reservation_lines do |t|
      t.integer :book_id
      t.integer :reservation_id
      t.integer :cantidad

      t.timestamps
    end
  end
end
