class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "#{@user.username} your account has been succesfully created"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:users).permit(:username, :password)
  end

end
