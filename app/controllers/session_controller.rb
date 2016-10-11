class SessionController < ApplicationController
  def new
  end

  def create
      user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      session[:message] = "Invalid email or password"
      redirect_to login_path
    end
  end

  def destroy # sign out.
    session[:user_id] = nil
    redirect_to root_path
  end
end
