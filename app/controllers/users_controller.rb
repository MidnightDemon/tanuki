class UsersController < ApplicationController
  load_and_authorize_resource

  # GET /posts
  # GET /posts.json

  # GET /posts/1
  # GET /posts/1.json
  def show
    @user = User.find(params[:id])
    @calendar_entries = @user.calendar_entries.all(:order => "date DESC, slot ASC")

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end
