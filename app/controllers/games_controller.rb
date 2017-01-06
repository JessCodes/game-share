class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)

    @game.save
  end

  def edit
    @game = Game.find(params[:id])
  end

  def show
    @game = Game.find(params[:id])
    @comments = @game.comments
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      flash[:notice] = "Updated Game"
      redirect_to game_path(@game)
    else
      flash[:notice] = "Something went wrong!"
      redirect_to edit_game_path(@game)
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Game #{@game.name} deleted!"

    redirect_to root_path
  end

end
