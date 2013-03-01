class CalendarEntriesController < ApplicationController
  # GET /calendar_entries
  # GET /calendar_entries.json
  def index
    @entry = CalendarEntry.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /calendar_entries/1
  # GET /calendar_entries/1.json
  def show
    @entry = CalendarEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry }
    end
  end

  # GET /calendar_entries/new
  # GET /calendar_entries/new.json
  def new
    @entry = CalendarEntry.new

    respond_to do |format|
      format.html # new.html.erb
	  format.json { render json: @entry }
    end
  end  
  
  # GET /calendar_entries/1/edit
  def edit
    @entry = CalendarEntry.find(params[:id])
  end  
  
  # POST /calendar_entries
  # POST /calendar_entries.json    
  def create
    @entry = CalendarEntry.new(params[:calendar_entry])

    respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render json: @entry, status: :created, location: @entry }
      else
        format.html { render action: "new" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end  
  end
  
  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @entry = CalendarEntry.find(params[:id])

    respond_to do |format|
      if @entry.update_attributes(params[:post])
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end 
  end
  
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @entry = CalendarEntry.find(params[:id])
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end  
  end
end