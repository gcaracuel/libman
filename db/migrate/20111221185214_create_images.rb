class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.string :texto_alternativo
      t.integer :tamano
      t.string :ruta

      t.timestamps
    end
  end
end
