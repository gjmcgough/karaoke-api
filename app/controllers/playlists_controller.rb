class PlaylistsController < ApplicationController

  def initialize(user)
    @user ||= user
  end

  def create
  end

  def edit
  end

  def show
    self.order_by_filter("title")
  end

  def update
  end

  def destroy
  end

end
