class ProfileController < ApplicationController
  def index
  	@tanukis = Tanuki.all
    @gentanukis = Array.new()

    3.times do
      gentanuki = Tanuki.new()

    	if([true, false].sample)
    		gentanuki.male = "true"
        gentanuki.name = Tanuki.get_random_male_name
        gentanuki.nature = Tanuki.get_random_nature
    	else
        gentanuki.male = "false"
        gentanuki.name = Tanuki.get_random_female_name
        gentanuki.nature = Tanuki.get_random_nature
    	end
      @gentanukis << gentanuki
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tanukis }
      format.json { render json: @gentanukis }
    end
  end

  def adopt_tanuki(selected)
    @tanuki = @gentanukis[selected]

    respond_to do |format|
      if @tanuki.save
        format.html { redirect_to @tanuki, notice: 'Task was successfully created.' }
        format.json { render json: @tanuki, status: :created, location: @tanuki }
      else
        format.html { render action: "new" }
        format.json { render json: @tanuki.errors, status: :unprocessable_entity }
      end
    end
  end   
end
