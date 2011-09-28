class FourOhFoursController < ApplicationController
  
  #Redirects to 404.html for routes errors
  def error
    respond_to do |format|
      format.html { render "errors/error.html.erb", :status => "404 Not Found"}
    end
  end
  
end
