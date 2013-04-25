class ProfileController < ApplicationController
  def index
  	@tanukis = Tanuki.all

  	if(rand(0..1))
  		@gentanuki = Tanuki.new(:male => "true", :name_id => MaleName.first(:offset => rand(MaleName.count)).id, :nature_id => Nature.first(:offset => rand(Nature.count)).id)
  	else
  		@gentanuki = Tanuki.new(:male => "false", :name_id => FemaleName.first(:offset => rand(FemaleName.count)).id, :nature_id => Nature.first(:offset => rand(Nature.count)).id)
  	end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tanukis }
      format.json { render json: @gentanuki }
    end
  end
end
