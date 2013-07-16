class DashboardController < ApplicationController

  def index  
    @currDate = 1
    @startDate = Time.local(Time.current.year, Time.current.mon, 1)
  
    # GET /calendarentries, /calendarentries.json, /posts, /posts.json, /tasks, /tasks.json
  
    @entries = current_user.calendar_entries.last(5).reverse
    @posts = Post.last(5).reverse
    @user = current_user

    @tasks_done = current_user.tasks.where(:completed => true);
    @tasks_pending = current_user.tasks.where(:completed => false).last(5).reverse;

    @all_entries = current_user.calendar_entries.reverse

    @users = User.all
    @users_search_results = User.search(params[:search])

    @tanukis = current_user.tanukis 

    respond_to do |format|
      format.html { render :layout => 'application' }
      format.json { render json: @entries }
      format.json { render json: @tasks }
      format.json { render json: @posts }
    end
  end  

  def update
    @user = current_user

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end  

  def show_date
    @date_entries = current_user.entries_for_date(params[:year], params[:month], params[:day])
    @time = Time.new(params[:year], params[:month], params[:day])
    @calories = 0
    
    @date_entries.each do |entry|
      if !entry.calories
        entry.calories = 0
      end
    end

    # render :partial => "show_date"
    # render "edit"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @date_entries }
    end
  end

end
