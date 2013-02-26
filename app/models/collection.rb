class Collection < ActiveRecord::Base
	belongs_to :editor
	has_and_belongs_to_many :books

	validates :editor_id, :nombre, :presence => true
end
