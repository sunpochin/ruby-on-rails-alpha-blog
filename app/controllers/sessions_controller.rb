class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to the user's show page.

      session[:user_id] = user.id
      flash[:error] = "logged in succesfully #{session[:user_id]}"
      # sign_in user
      redirect_to user
    else
      # Create an error message and re-render the signin form.
      # flash now
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    flash[:notice] = "Logged out"
    session[:user_id] = nil
    redirect_to root_path
  end

end