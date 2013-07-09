class ProfileController < ApplicationController
  def index
  	@tanukis = current_user.tanukis
    @gentanukis = Array.new

    3.times do
      gentanuki = Tanuki.new
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
end
