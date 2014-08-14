class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    redirect_to root_url
  end

  def index
    @users = User.all
  end

  private 

  def user_params
    params.require(:user).permit(:email)
  end
end