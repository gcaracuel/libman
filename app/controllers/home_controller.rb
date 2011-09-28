class HomeController < ApplicationController
  
  #home/index
  def index
      respond_to do |format|
        format.html { render "index.html.erb"}      
      end
  end
  
end