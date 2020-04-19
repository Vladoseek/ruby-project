class CommentsController < ApplicationController

  #def index
  # @comments = Comment.all
  # end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
