class ProfileController < ApplicationController
  def index
  	@tanukis = current_user.tanukis
    @gentanukis = Array.new()

    3.times do
      gentanuki = Tanuki.new()
      gentanuki.generate_characteristics

    	if([true, false].sample)
    		gentanuki.male = "true"
        gentanuki.name = Tanuki.get_random_male_name
    	else
        gentanuki.male = "false"
        gentanuki.name = Tanuki.get_random_female_name
    	end
      @gentanukis << gentanuki
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tanukis }
      format.json { render json: @gentanukis }
    end
  end

  def create
    if current_user.tanukis.count < current_user.tanuki_limit
      @tanuki = @gentanukis[params[:tanuki_id]]
      @tanuki.user_id = current_user.id

      respond_to do |format|
        if @tanuki.save
          format.html { redirect_to @tanuki, notice: 'Tanuki was successfully adopted!' }
          format.json { render json: @tanuki, status: :created, location: @tanuki }
        else
          format.html { render action: "new" }
          format.json { render json: @tanuki.errors, status: :unprocessable_entity }
        end
      end
    else
      window.confirm("You have no empty habitats! You must evict a tanuki to free a habitat.")
    end
  end   
end
