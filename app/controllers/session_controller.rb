class SessionController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:sessions][:username])
    if @user && @user.authenticate(params[:sessions][:password])
  end

  def delete
  end

end
