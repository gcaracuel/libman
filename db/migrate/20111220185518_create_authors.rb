class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :nombre
      t.string :apellido1
      t.string :apellido2

      t.timestamps
    end
  end
end
