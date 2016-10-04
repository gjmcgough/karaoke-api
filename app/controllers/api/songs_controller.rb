class Api::SongsController < ApplicationController
  # before_filter :find_song

  # def create
  #   if @song.present?
  #     render nothing: true # no error is rendered
  #   else
  #     @song = Song.new
  #     @song.attributes(title: @json['title'], artist: @json['artist'])
  #   end
  # end

  def create
    song_params = params[:song]
    @song = Song.create(title: song_params[:title], artist: song_params[:artist_name])
    PlaylistSong.create(playlist_id: current_user.playlist.id, song_id: @song.id)
    redirect_to api_artist_path(song_params[:artist_id])
  end

  private
  # def find_song
  #   @song = Song.find_by(title: @json['title'])
  #   head 409 unless @song.present?
  # end

end
