class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post = @current_user.posts.new post_params
    if post.save
      redirect_to post
    else
      render :new
    end
  end

  def edit
    @post = Post.find params[:id]
  end

  def update
    post = Post.find params[:id]
    post.update post_params
    redirect_to post
  end

  def show
    @post = Post.find params[:id]
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to user_path
  end

  private
  def post_params
    params.require(:post).permit(:post, :title, :tag_list)
  end
end
