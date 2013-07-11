class ProfileController < ApplicationController
  def index
  	@tanukis = current_user.tanukis
    @gentanukis = Array.new
    @tanuki_set = Array.new
    set = Array.new

    @tanukis.each do |tanuki|
      if(set.count == 3)
        @tanuki_set << set
        set = Array.new
      end

      set << tanuki
    end

    @tanuki_set << set

    3.times do
      gentanuki = Tanuki.new
      gentanuki.generate_characteristics
      @gentanukis << gentanuki
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tanukis }
      format.json { render json: @gentanukis }
    end
  end 
end
