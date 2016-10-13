class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.all
  end

  def create
    @post = Post.find params[:post_id]
    @post.favourites.create :user => @current_user
    redirect_to post_path @post
  end

  def destroy
    @post = Post.find params[:post_id]
    @post.favourites.where(:user_id => @current_user.id).destroy_all
    redirect_to post_path @post
  end
end
