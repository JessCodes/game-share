class GamesController < ApplicationController

  def index
    super
    @games = Game.all
  end

  def new
    super
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.creator_id = current_user.id
    if @game.save
     flash[:success] = "Game Successfully Created"
     redirect_to root_path
    else
     redirect_to new_game_path
    end
    game_params[:mechanic_ids].each do |m|
      GameMechanic.create(game_id: @game.id, mechanic_id: m)
    end
  end

  def edit
    super
    @game = Game.find(params[:id])
    @mechanics = Mechanic.all
  end

  def show
    super
    @game = Game.find(params[:id])
    @comments = @game.comments
    
    @comment = Comment.new
    @comment.game_id = @game.id
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
    GameMechanic.where(game_id: @game.id).destroy_all

    game_params[:mechanic_ids].each do |m|
      GameMechanic.create(game_id: @game.id, mechanic_id: m)
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Game #{@game.name} deleted!"

    redirect_to root_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :description, :picture, mechanic_ids:[])
  end

end
