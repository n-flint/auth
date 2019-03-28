class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
    if @user.save
      flash[:success] = "You have successfully registered"
    else
      render :new
      flash[:error] = "you suck"
    end
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
