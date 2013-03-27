module CalendarHelper
	
	def show_date
    @time = Time.new(params[:year], params[:month],params[:day], 0, 0)
    @date_entries = CalendarEntry.where("date == ?", @time)
    
    # render :partial => "show_date"
    # render "edit"

    binding.pry

    respond_to do |format|
      format.js { render :partial => 'show', :content_type => 'text/javascript' }
      format.html # index.html.erb
      # format.json { render json: @date_entries }
    end
  end
end
