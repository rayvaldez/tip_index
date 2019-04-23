class UsersController < ApplicationController

  #load form for new user
  def new
    @user = User.new
  end

  #create a user
  def create
  end
end
