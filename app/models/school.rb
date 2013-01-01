class School < ActiveRecord::Base
	belongs_to :user
	has_many :templates
	has_many :text_bills

      	validates :user_id, :cif, :active, :presence => true
      	validates :user_id, :numericality => true
end
