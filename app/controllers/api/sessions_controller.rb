class Api::SessionsController < ApplicationController
  def new
  end

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    head :ok
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

end
