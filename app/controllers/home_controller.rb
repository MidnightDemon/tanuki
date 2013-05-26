class HomeController < ApplicationController
  def index
  end

  def tabs
	  respond_to do |format|
	    format.js
	  end
  end  
end
