class SessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(root_path, notice: 'Logged in successfully.')
    else
      flash[:notice] = "Login failed."
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
