class UsersController < ApplicationController

  # users#INDEX
  def index
    @users = User.all
  end

  # users#SHOW
  def show
    @user = User.find(params[:id])
  end

  # users#NEW
  def new
    @user = User.new
  end

  # users#CREATE
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path
    else
      @errors = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
