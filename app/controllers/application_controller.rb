class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user(session_token)
    # find_by needs to be changed to session_token find
    @user = User.find_by(id: 5)
  end
  def is_admin?(user)
    # if user token matches current token (session)
    true
  end

  def user_playlist(user)
    playlist = Playlist.find(find_playlist_id(user)).songs
  end

  private
  def find_playlist_id(user)
    list_id = user.playlist.id
  end

end
