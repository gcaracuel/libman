class OrderLine < ActiveRecord::Base
	belongs_to :order
	belongs_to :book

	validates :order_id, :book_id, :cantidad, :presence => true
	validates :order_id, :book_id, :cantidad, :numericality => true
end
