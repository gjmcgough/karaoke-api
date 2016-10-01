class Playlist < ActiveRecord::Base
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  belongs_to :user


# input: user's playlist
  def order_by_filter(type)
    list = []
    case type
    when "title"
      list = self.songs.order(:title)
    when "updated_at"
      list = self.songs.order(:update_at)
    else "artist"
      list = self.songs.order(:artist)
    end
  end
end
