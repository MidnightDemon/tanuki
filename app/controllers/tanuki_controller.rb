class TanukiController < ApplicationController
  # GET /calendar_entries
  # GET /calendar_entries.json

  def show
    @tanuki = Tanukis.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entry }
    end
  end
  
  # POST /calendar_entries
  # POST /calendar_entries.json    
  def create
    @tanuki = Tanukis.find(params[:id])
    @tanuki.user_id = current_user.id

    respond_to do |format|
      if @tanuki.save
        format.html { redirect_to @tanuki, notice: 'Entry was successfully created.' }
        format.json { render json: @tanuki, status: :created, location: @tanuki }
      else
        format.html { render action: "new" }
        format.json { render json: @tanuki.errors, status: :unprocessable_entity }
      end
    end  
  end
  
  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @tanuki = Tanukis.find(params[:id])

    respond_to do |format|
      if @tanuki.update_attributes(params[:calendar_entry])
        format.html { redirect_to @tanuki, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tanuki.errors, status: :unprocessable_entity }
      end
    end 
  end
  
  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @tanuki = Tanukis.find(params[:id])
    @tanuki.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end  
  end
end
