class TextReservationLine < ActiveRecord::Base
	belongs_to :course
	belongs_to :text_reservation
	belongs_to :textbook

      	validates :textbook_id, :textReservation_id, :cantidad, :course_id, :presence => true
       	validates :textbook_id, :textReservation_id, :cantidad, :course_id, :numericality => true
end
