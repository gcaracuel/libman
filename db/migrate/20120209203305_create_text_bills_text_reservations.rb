class CreateTextBillsTextReservations < ActiveRecord::Migration
  def up
  	create_table :textBills_textReservations, :id => false do |t|
  		t.references :text_bill
  		t.references :text_reservations
  	end
  end

  def down
  	drop_table :textBills_textReservations
  end
end
