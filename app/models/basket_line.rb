class BasketLine < ActiveRecord::Base
	belongs_to :basket
	belongs_to :book

	validates :book_id, :basket_id, :cantidad, :presence => true
	validates :book_id, :uniqueness => {:scope => :basket_id}
	validates :cantidad, :numericality => true
end
