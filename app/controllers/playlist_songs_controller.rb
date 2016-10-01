class PlaylistSongsController < ApplicationController
  def new
    @list = PlaylistSong.new
    render new_playlist_song_path
  end

  def create
    @list = PlaylistSong.create(params)
    @list.save
    redirect_to @list
  end

  def destroy
    @list = PlaylistSong.find_by(params)
  end

end
