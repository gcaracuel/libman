class Book < ActiveRecord::Base
	belongs_to :author
	has_many :basket_lines
	has_many :bill_lines
	has_many :comments
	has_many :invoice_lines
	has_many :order_lines
	has_many :refund_lines
	has_many :reservation_lines
	has_many :images, :as => :imageable
	has_one :textbook
	has_and_belongs_to_many :collections
	has_many :baskets, :through => :basket_lines
	has_many :bills, :through => :bill_lines

      	validates :author_id, :editor_id, :titulo, :digital, :stock, :situacion, :iva, :presence => true
      	validates :author_id, :editor_id, :precio, :num_edicion, :stock, :iva, :numericality => true
      	validates :isbn, :ean, :uniqueness => true
end
