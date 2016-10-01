class UsersController < ApplicationController
  def show
    render json: User.find(params[:id])
  end

  def new
    # facebook login page?
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

end
