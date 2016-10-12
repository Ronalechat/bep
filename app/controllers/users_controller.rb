class UsersController < ApplicationController
  before_action :check_for_user, :only => [:edit, :update]

  def show
    @post = Post.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params

    if @user.save
      redirect_to root_path #sign up successful
    else
      render :new
    end
  end

  def edit
    @user = @current_user

    # Cloudinary ???
    if params[:file].present?
      req = Cloudinary::Uploader.upload( params[:file] )

      user.image_thumb = req['public_id']
      user.save
    end
  end

  def update
    @user = @current_user
    if @user.update(user_params)
      flash[:message] = 'Profile successfully updated'
      redirect_to @user
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :name, :email, :password, :password_confirmation, :image_thumb)
  end
end
