class Api::PartiesController < ApplicationController
  def new
  end

  def create

  end

  def update
    # compare json data with the party user list and find unique key value pairs
    # add them to the list

  end

  def destroy
  end

  def set_party
    @party = User.find_by(username: params[:users]).playlist
  end
end
