class CalendarController < ApplicationController

  def display  
    @currDate = 1
    @startDate = Time.local(Time.now.year, Time.now.mon, 1)
  
    # GET /calendarentries, /calendarentries.json, /posts, /posts.json, /tasks, /tasks.json
  
    @entries = CalendarEntry.first(5).reverse

    @tasks_done = Task.where(:completed => true);
    @tasks_pending = Task.where(:completed => false).first(5).reverse;

    @all_entries = CalendarEntry.all.reverse

    respond_to do |format|
      format.html { render :layout => nil }
      format.json { render json: @entries }
      format.json { render json: @tasks }
    end
  end

  def welcome 
    @posts = Post.first(5).reverse
    
    respond_to do |format|
      format.html { render :layout => nil }
      format.json { render json: @posts }
    end
  end  

  def show_date
    @time = Time.new(params[:year], params[:month],params[:day])
    @date_entries = CalendarEntry.where("date > ? AND date < ?", @time.yesterday.at_beginning_of_day, @time.at_beginning_of_day)
    
    # render :partial => "show_date"
    # render "edit"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @date_entries }
    end
  end

end
