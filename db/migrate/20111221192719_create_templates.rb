class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.integer :course_id
      t.integer :school_id
      t.string :curso_lectivo

      t.timestamps
    end
  end
end
