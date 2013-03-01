class CalendarController < ApplicationController
  # GET /posts
  # GET /posts.json
  
  def self.increment(date)
	return date+1
  end
	
  def index
    @currDate = 1
    @startDate = Time.local(Time.now.year, Time.now.mon, 1)
  
    # GET /calendarentries
    # GET /calendarentries.json 
  
    @entries = CalendarEntry.all
	@posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
	  format.json { render json: @posts }
    end
  end
end
