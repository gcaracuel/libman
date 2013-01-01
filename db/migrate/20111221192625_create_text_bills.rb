class CreateTextBills < ActiveRecord::Migration
  def change
    create_table :text_bills do |t|
      t.integer :school_id
      t.integer :numero
      t.date :fecha
      t.float :importe

      t.timestamps
    end
  end
end
