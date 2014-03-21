class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)
    if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
    else
      flash[:notice] = "that's already taken!"
      render new_user_path
    end

  end

  private

  def user_params 
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end


end
