class Api::PlaylistSongsController < ApplicationController
  before_action :set_playlist, only: [:create, :update]
  before_action :find_playlist_song, only: [:create, :update]

  def new
    @playlistSong = PlaylistSong.new
    render json: { playlistsong: @playlistSong }
  end

  def create
    if @playlistSong.present?
      render nothing: true
      head 208 #already reported status code
    else
      @playlistSong = PlaylistSong.new(playlist_id: @playlist.id, song_id: @json['song_id'])
      head 200
    end
  end

  def destroy
    @playlistSong = PlaylistSong.find_by(params)
  end

  private
  def set_playlist #finds the playlist associated with user
    @playlist = User.find_by(username: params[:users]).playlist
  end

  def find_playlist_song
    render json: @playlistSong if @playlistSong = PlaylistSong.where(playlist_id: @playlist.id, song_id: @json[:song_id])
  end

end
