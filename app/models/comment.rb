class Comment < ActiveRecord::Base
	belongs_to :book
	has_many :users

      	validates :user_id, :book_id, :fecha, :contenido, :activo, :presence => true
      	validates :user_id, :book_id, :numericality => true
end
