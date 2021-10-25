class ApplicationController < ActionController::Base

  # when we put it here (instead of application_helper), all controllers will have current_user helper, not just view.
  def current_user
    # if we already have a current user, return it, otherwise we make a hit to db to get it.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    # an older way to use if condition
    # if session[:user_id]
    #   User.find(session[:id])
  end

  def logged_in?
    # return true of false based on the current_user
    !!current_user
  end
  
  def require_user
    if !logged_in?
      flash[:alert] = "You must be logged in to perform this action"
      redirect_to login_path
    end
  end

  # make current_user to our views as well.
  helper_method :current_user, :logged_in?

end
