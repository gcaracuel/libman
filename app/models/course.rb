class Course < ActiveRecord::Base
	has_many :templates
	has_many :text_reservation_lines

	validates :nombre, :presence => true
end
