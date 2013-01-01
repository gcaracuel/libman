class ReservationLine < ActiveRecord::Base
	belongs_to :reservation
	belongs_to :book

	validates :reservation_id, :book_id, :cantidad, :presence => true
	validates :reservation_id, :book_id, :cantidad, :numericality => true
end
