class CommentsController < ApplicationController

  def new
    @game = Game.find(params[:id])
    @comment = Comment.new(game: @game)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.game_id = params[:id].to_i
    @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    flash[:notice] = "Comment deleted!"

    redirect_to game_comment_path
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :user_id)
  end
end
