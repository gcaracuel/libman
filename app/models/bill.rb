class Bill < ActiveRecord::Base
	belongs_to :supplier
	has_many :bill_lines
	has_many :books, :through => :bill_lines

	validates :supplier_id, :numero, :fecha, :importe, :activo, :presence => true
	validates :numero, :importe,:supplier_id, :numericality => true
	validates :numero, :uniqueness => true
end
