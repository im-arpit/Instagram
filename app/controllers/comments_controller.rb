class CommentsController < ApplicationController
  def create
    Comment.create(comment_params)
    redirect_to user_path(current_user.id)
  end
   def show
    @comment = Comment.find(params[:id])
  end
  private
  def comment_params
    params.require(:comment).permit(:description, :post_id, :user_id)
  end
end
