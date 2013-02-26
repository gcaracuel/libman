class BillLine < ActiveRecord::Base
	belongs_to :bill
	belongs_to :book

	validates :bill_id, :book_id, :cantidad, :precio, :iva, :presence => true
	validates :bill_id, :book_id, :cantidad, :precio, :iva, :numericality => true		
end
