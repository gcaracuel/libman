class Order < ActiveRecord::Base
	belongs_to :supplier
	has_many :order_lines

      	validates :supplier_id, :numero, :fecha, :activo, :presence => true
      	validates :supplier_id, :numero, :numericality => true
end
