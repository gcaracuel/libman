class Reservation < ActiveRecord::Base
	belongs_to :user
	has_many :reservation_lines
	has_many :text_reservation

      	validates :user_id, :fecha_inicio, :activo, :presence => true
      	validates :user_id, :numericality => true
end
