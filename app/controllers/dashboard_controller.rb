class DashboardController < ApplicationController

  def index  
    @currDate = 1
    @startDate = Time.local(Time.now.year, Time.now.mon, 1)
  
    # GET /calendarentries, /calendarentries.json, /posts, /posts.json, /tasks, /tasks.json
  
    @entries = current_user.calendar_entries.first(5).reverse
    @posts = Post.first(5).reverse

    @tasks_done = current_user.tasks.where(:completed => true);
    @tasks_pending = current_user.tasks.where(:completed => false).first(5).reverse;

    @all_entries = current_user.calendar_entries.reverse

    respond_to do |format|
      format.html { render :layout => 'application' }
      format.json { render json: @entries }
      format.json { render json: @tasks }
      format.json { render json: @posts }
    end
  end  

  def show_date
    @time = Time.new(params[:year], params[:month],params[:day])
    @date_entries = current_user.calendar_entries.where("date = ?", @time.at_beginning_of_day)
    
    # render :partial => "show_date"
    # render "edit"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @date_entries }
    end
  end

end
