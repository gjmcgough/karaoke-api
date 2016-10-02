class Api::UsersController < ApplicationController
  before_action :set_user
  def show
    @user = current_user
    if @user
    render json: { user: @user, playlist: user_playlist(@user)  }, status: :ok
      head :ok
    # renders /profile page with links:
      # create playlist
      # edit playlist (adding or deleting a song)
    end
  end

  def new
    # facebook login page?
    @user
  end

  def create
    # parse facebook data to create a new user
    # @user = User.new(name: , email: , facebook_id: , token: )
  end

  def edit
    # find the user to add a party id to
  end

  def update
    #add party id to the user
  end

  private
  def set_user
    # @user = User.find(params[:id])
  end
end


