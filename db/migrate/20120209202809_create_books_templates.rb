class CreateBooksTemplates < ActiveRecord::Migration
  def up
  	create_table :books_templates, :id => false do |t|
  		t.references :book
  		t.references :supplier
  	end
  end

  def down
  	drop_table :books_templates
  end
end
