class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # instance variable, @
    byebug
    @article = Article.find(params[:id])
    print "Article: " + @article.title + "\n"
  end

end
