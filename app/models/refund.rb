class Refund < ActiveRecord::Base
	belongs_to :suppliers
	has_many :refund_lines

      	validates :supplier_id, :numero, :fecha, :importe, :activo, :presence => true
    	validates :supplier_id, :numero, :importe, :numericality => true
    	validates :numero, :uniqueness => true
end
