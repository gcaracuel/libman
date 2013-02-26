class TextBill < ActiveRecord::Base
	belongs_to :school
	has_and_belongs_to_many :textBills_textReservations

      	validates :school_id, :numero, :fecha, :importe, :presence => true
      	validates :school_id, :numero, :importe, :numericality => true
      	validates :numero, :uniqueness => true
end
