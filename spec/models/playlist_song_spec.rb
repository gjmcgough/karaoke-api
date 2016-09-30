require 'rails_helper'

RSpec.describe PlaylistSong, :type => :model do
  let(:playlist_song){PlaylistSong.new(playlist_id: 1, song_id: 4)}

  it "should instantiate a new playlist_song" do
    expect(playlist_song).to be_instance_of(PlaylistSong)
  end
end
