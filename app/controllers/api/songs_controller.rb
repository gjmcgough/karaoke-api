class Api::SongsController < ApplicationController
  before_filter :find_song

  def create
    if @song.present?
      render nothing: true # no error is rendered
    else
      @song = Song.new
      @song.attributes(title: @json['title'], artist: @json['artist'])
    end
  end

  private
  def find_song
    @song = Song.find_by(title: @json['title'])
    head 409 unless @song.present?
  end

end
