class InvoiceLine < ActiveRecord::Base
	belongs_to :book
	belongs_to :invoice

	validates :invoice_id, :book_id, :cantidad, :presence => true
	validates :invoice_id, :book_id, :cantidad, :numericality => true
end
