class UsersController < ApplicationController

  def show
    @post = Post.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params

    if @user.save
      redirect_to root_path #sign up successful
    else
      render :new
    end
  end

  def edit
  end

  def update
    @current_user.update user_params
    redirect_to @current_user
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation, :image_thumb)
  end
end
