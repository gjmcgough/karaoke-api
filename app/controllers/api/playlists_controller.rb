class Api::PlaylistsController < ApplicationController
  before_action :set_playlist

  def show
    @playlist = Playlist.find(playlist_params)
    render json: @playlist, status: :ok
  end

  def update
    if @playlist.update(params)
      render json: @playlist, status: :ok
    else
      render json: @playlist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # User cannot destroy their playlist, they can only delete songs and empty playlist
  end

  private
  def set_playlist
    @playlist = user_playlist(current_user)
  end

  def playlist_params
    params.require("playlist").permit("user_id")
  end

end
