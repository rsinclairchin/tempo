class SessionController < ApplicationController

  def new
    session[:user_id] = @current_user.id
  end

  def create
    @user = User.find_by(username: params[:sessions][:username])
    if @user && @user.authenticate(params[:sessions][:password])
  end

  def delete
  end

end
