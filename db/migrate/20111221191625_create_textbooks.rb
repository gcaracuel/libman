class CreateTextbooks < ActiveRecord::Migration
  def change
    create_table :textbooks do |t|
      t.integer :book_id
      t.string :materia
      t.string :tipo

      t.timestamps
    end
  end
end
