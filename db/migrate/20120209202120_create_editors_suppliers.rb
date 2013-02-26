class CreateEditorsSuppliers < ActiveRecord::Migration
  def sup
  	create_table :editors_suppliers, :id => false do |t|
  		t.references :editor
  		t.references :supplier
  	end
  end

  def down
  	drop_table :editors_suppliers
  end
end
