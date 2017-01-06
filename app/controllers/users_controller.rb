class UsersController < ApplicationController

  def new
    super
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      auto_login(@user)
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def edit
    super
    @user = User.find(params[:id])
  end

  def show
    super
    @user = User.find(params[:id])
    @libraries = @user.libraries
    @created_games = Game.where(creator: @user)
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = "Updated Account"
      redirect_to user_path(@user)
    else
      flash[:notice] = "Something went wrong!"
      redirect_to edit_user_path(@user)
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User #{@user.username} deleted!"

    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
