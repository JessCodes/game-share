class GamesController < ApplicationController

  # No login checks and No authorization being used here, please implement.

  def index  # This isn't needed per the requirements.
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    # Need to consider the error case here if it doesn't save.
    @game.save
  end

  def edit
    @game = Game.find(params[:id])
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      flash[:notice] = "Updated Game`"
      redirect_to game_path(@game)
    else
      flash[:notice] = "Something went wrong!"
      redirect_to edit_game_path(@game)
    end
  end

  # Was this a part of the requirements?
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Game #{@game.name} deleted!"

    redirect_to root_path
  end

end
