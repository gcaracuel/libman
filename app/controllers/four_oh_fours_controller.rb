class FourOhFoursController < ApplicationController
  
  #Redirects to 404.html for routes errors
  def error
    respond_to do |format|
      format.html { render "errors/error", :status => "404 Not Found"}
      format.all {} #For any other kinds of requests do nothing, maybe it will be necessary to extend it with xml responses
    end
  end
  
end
