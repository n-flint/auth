class SessionsController < ApplicationController

  def new

  end

  def create
    redirect_to root_path
    flash[:succsess] = "You have successfully logged in"
  end

end
