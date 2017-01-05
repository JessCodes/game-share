class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

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
    params.require(:comment).permit(:title, :body, :user_id, :game_id)
  end
end