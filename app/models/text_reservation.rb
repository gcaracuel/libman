class TextReservation < ActiveRecord::Base
	belongs_to :reservation
	has_many :text_reservation_lines
	has_and_belongs_to_many :textBills_textReservations

      	validates :reservation_id, :nombre, :apellido1, :presence => true
      	validates :cheque_libro, :numericality => true
end
