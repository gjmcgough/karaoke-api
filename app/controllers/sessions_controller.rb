class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    # If the user exists AND the password entered is correct.
    if @user && @user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user
      # logged in when they navigate around our website.
      render json: { user: @user }, status: :ok
      session[:user_id] = @user.id
      # redirect_to '/'
    else
    # If user's login doesn't work, send them back to the login form.
      status 422
    end
  end


  # def create
  #   user = User.from_omniauth(env["omniauth.auth"])
  #   user.playlist ||= Playlist.create
  #   session[:user_id] = user.id
  #   redirect_to root_path
  # end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end


  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_path
  # end
end
