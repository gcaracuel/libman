class CreateTextReservationLines < ActiveRecord::Migration
  def change
    create_table :text_reservation_lines do |t|
      t.integer :textbook_id
      t.integer :textReservation_id
      t.integer :cantidad
      t.integer :course_id

      t.timestamps
    end
  end
end
