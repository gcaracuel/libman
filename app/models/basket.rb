class Basket < ActiveRecord::Base
	belongs_to :user
	has_many :basket_lines
	has_many :books, :trought => :basket_lines

	validates :user_id, :importe, :presence => true
	validates :user_id, :uniqueness => true
	validates :importe, :numericality=> true
end
