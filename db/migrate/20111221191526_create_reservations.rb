class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.date :fecha_inicio
      t.date :fecha_entrega
      t.boolean :activo

      t.timestamps
    end
  end
end
