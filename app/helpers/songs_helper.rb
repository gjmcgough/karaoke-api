module SongsHelper
  def find_or_create
    @song ||= Song.create(params)
  end
end
