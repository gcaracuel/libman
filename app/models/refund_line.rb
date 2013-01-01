class RefundLine < ActiveRecord::Base
	belongs_to :refund
	belongs_to :book

      	validates :refund_id, :book_id, :cantidad, :precio, :iva, :presence => true
      	validates :refund_id, :book_id, :cantidad, :precio, :iva, :numericality => true
end
