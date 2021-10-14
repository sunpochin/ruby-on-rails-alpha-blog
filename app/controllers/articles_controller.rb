class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # debug
    # byebug
    # instance variable, @
    @article = Article.find(params[:id])
    print "Article: " + @article.title + "\n"
  end

end
