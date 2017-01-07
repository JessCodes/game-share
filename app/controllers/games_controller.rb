class GamesController < ApplicationController
  #before_action :authenticate_user!, only:[:upvote]

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

  def vote
    @game = Game.find(params[:id])

    @vote = Vote.find_or_create_by(voteable_type: "Game", voteable_id: @game.id, user_id: current_user.id)
    @vote.value = params[:value]
    @vote.save
    
    redirect_to game_path(@game)


  end

  #     #else
  #     if @game.vote.value = 1
  #       #reset vote
  #       @game.vote.destroy
  #       #else set it to 1
  #     else
  #       @game.vote.value = 1
  #     end
  #   #else make a new vote with value 1
  # else
  #   v = @game.votes.new(value: 1)
  #   v.user_id = current_user.id
  #   v.save
  #   end
  #   redirect_to game_path(@vote.game)
  # end

  private

  def game_params
    params.require(:game).permit(:name, :description, :picture, mechanic_ids:[])
  end

end
