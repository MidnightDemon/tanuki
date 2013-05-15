class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  def new
    @task = Task.new
    @task.user_id = current_user

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end  	
  end

  def complete
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(:completed => true)
        format.html { redirect_to calendar_index_path }
      else
        format.html { redirect_to calendar_index_path }
      end
    end    
  end

  def create
    @task = Task.new(params[:task])
    @task.id = current_user

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end  

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to calendar_index_path }
      format.json { head :no_content }
    end
  end
end
