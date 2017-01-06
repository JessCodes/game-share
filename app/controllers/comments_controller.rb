class CommentsController < ApplicationController

  # def new
  #   @game = Game.find(params[:id])
  #   @comment = Comment.new(game_id: @game.id)
  # end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      flash[:notice] = "Saved comment"
      redirect_to game_path(@comment.game)
    else
      flash[:notice] = "Something went wrong!"
      redirect_to game_path(@comment.game)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted!"

    redirect_to game_comment_path
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :user_id, :game_id)
  end
end
