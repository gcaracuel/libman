class Textbook < ActiveRecord::Base
	belongs_to :book
	has_many :text_reservation_lines

	validates :book_id, :presence => true
	validates :book_id, :numericality => true
	validates :book_id, :uniqueness => true
end
