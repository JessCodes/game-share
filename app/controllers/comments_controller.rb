class CommentsController < ApplicationController
#  before_action :authenticate_user!, only:[:upvote, :new]

  def new
    @game = Game.find(params[:id])
    @comment = Comment.new(game_id: @game.id)
  end

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

  def upvote
    @comment = Comment.find(params[:id])
    #if vote exists, set it to 1
    if @comment.vote
      if @comment.vote.value = 1
        #reset vote
        @comment.vote.destroy
        #else set it to 1
      else
        @comment.vote.value = 1
      end
    #else make a new vote with value 1
  else
    v = @comment.votes.new(value: 1)
    v.user_id = current_user.id
    v.save
    end
    redirect_to game_path(@comment.game)
  end

  # def downvote
  #   @comment = Comment.find(params[:id])
  #
  #   #if vote exists, set it to -1
  #   if @comment.vote
  #     if @comment.vote.value = -1
  #       #reset vote
  #       @comment.vote.destroy
  #       #else set it to -1
  #     else
  #       @comment.vote.value = -1
  #       v.save
  #     end
  #
  #   #else make a new vote with value 1
  #   else
  #     v = @comment.votes.new(value: 1)
  #     v.user_id = current_user.id
  #     v.save
  #   end
  #     redirect_to game_path(@comment.game)
  # end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :user_id, :game_id)
  end
end
