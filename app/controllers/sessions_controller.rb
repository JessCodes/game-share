class SessionsController < ApplicationController
  def new
    super
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(root_path, notice: 'Logged in successfully.')
    else
      flash[:notice] = "Your username or password didn't match"
      redirect_to login_path
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
