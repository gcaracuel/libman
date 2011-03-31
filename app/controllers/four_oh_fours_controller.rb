class FourOhFoursController < ApplicationController
  
  #Redirects to 404.html for routes errors
  def index
    respond_to do |format|
    format.html { render :file => "#{RAILS_ROOT}/public/404.html" , :status => "404 Not Found"}
    #Without layouts:
    #format.html { render :file => "#{RAILS_ROOT}/public/404.html" , :status => "404 Not Found", :layout => false }
    format.all { render :nothing => true, :status => "404 Not Found" }
    end
  end
  
end
