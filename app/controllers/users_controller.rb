class UsersController < ApplicationController
  def index
    session[:user_id] = User.first.id
    
    redirect_to user_path(session[:user_id])
  end

  def show
    @user = User.find(session[:user_id])
  end
  
  def update
    @user = User.find(session[:user_id])
    @user.first_name = ''
    logger.info @user.valid?.to_s
          
    redirect_to @user
  end
end
