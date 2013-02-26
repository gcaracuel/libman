class HomeController < ApplicationController
  
  #home/index
  def index
      respond_to do |format|
        format.html { render "home/index"}      
      end

      #Get bestsellers list
      @bestsellers = Book.first
  end
  
end