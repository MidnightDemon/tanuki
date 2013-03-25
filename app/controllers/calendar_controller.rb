class CalendarController < ApplicationController
  def index
    @currDate = 1
    @startDate = Time.local(Time.now.year, Time.now.mon, 1)
  
    # GET /calendarentries, /calendarentries.json, /posts, /posts.json, /tasks, /tasks.json
  
    @entries = CalendarEntry.first(5).reverse
    @posts = Post.first(5).reverse

    @tasks_done = Task.where(:completed => true);
    @tasks_pending = Task.where(:completed => false).first(5).reverse;

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entries }
      format.json { render json: @posts }
      format.json { render json: @tasks }
    end
  end

  def show_date(params)
    @time = Time.new(params[:year], params[:month],params[:day] , 0, 0)
    @date_entries = CalendarEntry.where("start_date == ?", @time)
    
    # render :partial => "show_date"
    # render "edit"

    respond_to do |format|
      format.js { render 'show_date' }
      format.html # index.html.erb
      # format.json { render json: @date_entries }
    end
  end
end
