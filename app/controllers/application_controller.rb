class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_playlist(user)
    playlist = Playlist.find(find_playlist_id(user)).songs
  end

  private
  def find_playlist_id(user)
    list_id = user.playlist.id
  end

end
