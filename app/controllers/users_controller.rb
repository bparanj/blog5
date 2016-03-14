class UsersController < ApplicationController
  layout :user_layout 
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(params.require(:user).permit(:full_name, :password))
    
    redirect_to users_path
  end
  
  private

  def user_layout
    if admin?
      'admin'
    else
      'application'
    end
  end

  def admin?
    true
  end
  
end
