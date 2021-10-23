class UsersController < ApplicationController
  def new
    @user = User.new
    return "hello"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Signed up!"
    else
      render :new
    end
  end

end