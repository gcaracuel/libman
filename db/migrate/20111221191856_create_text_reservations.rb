class CreateTextReservations < ActiveRecord::Migration
  def change
    create_table :text_reservations do |t|
      t.integer :reservation_id
      t.string :nombre
      t.string :apellido1
      t.string :apellido2
      t.string :cheque_libro

      t.timestamps
    end
  end
end
