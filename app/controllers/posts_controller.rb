class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = @current_user.posts.create post_params
    redirect_to post
  end

  def edit
  end

  def show
    @post = Post.find params[:id]
  end

  private
  def post_params
    params.require(:post).permit(:post, :title,:user_id)
  end
end
