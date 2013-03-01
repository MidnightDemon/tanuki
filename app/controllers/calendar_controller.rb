class CalendarController < ApplicationController
  # GET /posts
  # GET /posts.json
	
  def index
    @currDate = 1
    @startDate = Time.local(Time.now.year, Time.now.mon, 1)
  
    # GET /calendarentries
    # GET /calendarentries.json 
  
    @entries = CalendarEntry.first(5).reverse

	#.select("name, date, content, id").first(5).reverse
	@posts = Post.first(5).reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
	  format.json { render json: @posts }
    end
  end
end
