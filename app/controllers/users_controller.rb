class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    User.create(allowed_params)
    
    redirect_to users_path
  end
   
  def allowed_params
    params.require(:user).permit(:full_name, :password)
  end  
end
