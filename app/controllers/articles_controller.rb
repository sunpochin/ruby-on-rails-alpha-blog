class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # debug
    # byebug
    # instance variable, @
    @article = Article.find(params[:id])
    # print "Article: " + @article.title + "\n"
  end

  def new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save

    # redirect_to article_path(@article)
    redirect_to @article
  end
end
