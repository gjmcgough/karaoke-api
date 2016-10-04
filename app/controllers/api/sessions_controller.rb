class Api::SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.from_omniauth(auth_hash)
    @user.playlist = Playlist.create
    session[:user_id] = user.id
    redirect_to root_path
  end

  # def create
  #   @user = User.find_by(username: @json['username'])
  #   # If the user exists AND the password entered is correct.
  #   # if @user && @user.authenticate(@json['password'])
  #     # Save the user id inside the browser cookie. This is how we keep the user
  #     # logged in when they navigate around our website.
  #     render json: { user: @user }, status: :ok
  #     session[:user_id] = @user.id
  #   else
  #   # If user's login doesn't work, send them back to the login form.
  #     render nothing: true
  #     head :unprocessable_entity
  #   end
  # end

  def destroy
    session[:user_id] = nil
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
