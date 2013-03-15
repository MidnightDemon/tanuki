class CalendarController < ApplicationController
  # GET /posts
  # GET /posts.json
	
  def index
    @currDate = 1
    @startDate = Time.local(Time.now.year, Time.now.mon, 1)
  
    # GET /calendarentries, /calendarentries.json, /posts, /posts.json, /tasks, /tasks.json
  
    @entries = CalendarEntry.first(5).reverse
    @posts = Post.first(5).reverse
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
      format.json { render json: @posts }
      format.json { render json: @tasks }
    end
  end
end
