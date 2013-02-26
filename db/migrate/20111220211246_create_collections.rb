class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.integer :editor_id
      t.string :nombre
      t.string :codigo

      t.timestamps
    end
  end
end
