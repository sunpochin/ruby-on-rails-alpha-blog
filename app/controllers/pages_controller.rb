class PagesController < ApplicationController
  def home
    redirect_to articles_path if logged_in?
    # render 'home'
  end

  def about
    # render 'about'
  end

end