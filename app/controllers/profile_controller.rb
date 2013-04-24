class ProfileController < ApplicationController
  def edit
  	@tanukis = Tanuki.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end
end
