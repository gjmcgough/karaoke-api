require 'rails_helper'

RSpec.describe Playlist, :type => :model do
    let(:playlist){Playlist.new(user_id: 1)}

  it "should instantiate a new playlist" do
    expect(playlist).to be_instance_of(Playlist)
  end
end
