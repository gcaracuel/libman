class Invoice < ActiveRecord::Base
	belongs_to :supplier
	has_many :invoice_lines

	validates :supplier_id, :numero, :fecha, :importe, :activo, :presence => true
	validates :supplier_id, :numero, :importe, :numericality => true
	validates :numero, :uniqueness => true
end
