class SessionsController < ApplicationController

  #load form for new session
  def new
    @user = User.new
    render :login
  end

  #create a new session from params
  def create
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to tips_path
    else
      redirect_to '/login'
    end
  end

  #redirect to home after login
  def home
  end

  def destroy
    session.clear
    redirect_to '/'
  end

end
