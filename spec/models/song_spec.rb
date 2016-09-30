require 'rails_helper'

RSpec.describe Song, :type => :model do
  let(:song){Song.new(artist: "newartist", title: "newtitle")}

  it "should instantiate a new song" do
    expect(song).to be_instance_of(Song)
  end
end
