class Author < ActiveRecord::Base
	has_many :book

	validates :name, :apellido1, :presence => true
end
