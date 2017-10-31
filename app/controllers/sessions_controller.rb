class SessionsController < ApplicationController

  def new

  end

  def create

    p "******************************"
    p session_params
    p params[:session]
    @user = User.find_by(username: session_params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(current_user)
    else
      redirect_to new_session_path
    end
  end

  def destroy
    p "*************************"
    p session
    session[:user_id] = nil
    redirect_to questions_path
  end

  private

  def session_params
    params.require(:session).permit(:username, :password)
  end


end
