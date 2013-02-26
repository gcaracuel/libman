class FourOhFoursController < ApplicationController
  
  #Redirects to a partial 404.html for routes errors
  def error
    respond_to do |format|
      format.html { render "errors/error", :status => "404 Not Found"}
    end
  end
  
end