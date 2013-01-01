class Editor < ActiveRecord::Base
	has_many :collections
	has_and_belongs_to_many :suppliers
	has_many :images, :as => :imageable

      	validates :nombre, :activo, :presence => true
      	validates :email, :format => {:with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ , :message => "email format not valid" }
end
