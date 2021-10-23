class UsersController < ApplicationController
  def new
    @user = User.new
    return "hello"
  end

  def create
    # byebug
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "#{@user.username} you have successfully signed up. Welcome to the blog."
      redirect_to articles_path
    else
      render :new
    end
    # @user = User.new(user_params)
    # if @user.save
    #   redirect_to root_path, notice: "Signed up!"
    # else
    #   render :new
    # end
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end