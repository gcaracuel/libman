class Supplier < ActiveRecord::Base
	has_many :refunds
	has_many :bills
	has_many :invoices
	has_many :orders
	has_and_belongs_to_many :editors

      	validates :nombre, :activo, :cod_cliente, :presence => true
end
