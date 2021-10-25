class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: [:edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
    @articles = @user.articles.paginate(page: params[:page], per_page: 5)

  end

  def index
    # @users = User.all
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def new
    @user = User.new
    # return "hello"
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Your account has been successfully updated."
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    # byebug
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "#{@user.username} you have successfully signed up. Welcome to the blog."
      redirect_to articles_path
    else
      render :new
    end
  end

  def destroy
    puts "destroy user: #{@user.username}" 
    @user.destroy
    # for admin deleting other users without logging itself out.
    if (@user == current_user)
      session[:user_id] = nil
    end
    flash[:notice] = "#{@user.username} deleted!"
    redirect_to articles_path
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def require_same_user
    if (current_user != @user) && !current_user.admin?
      flash[:alert] = "You can only edit or delete your own account."
      redirect_to @user
    end
  end


end