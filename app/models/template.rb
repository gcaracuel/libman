class Template < ActiveRecord::Base
	belongs_to :course
	belongs_to :school
	has_and_belongs_to_many :books 

	validates :course_id, :school_id, :curso_lectivo, :presence => true
	validates :course_id, :school_id, :numericality => true
end
