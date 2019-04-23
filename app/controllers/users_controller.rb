class UsersController < ApplicationController

  #load form for new user
  def new
    @user = User.new
  end

  #create a user
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to tips_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
