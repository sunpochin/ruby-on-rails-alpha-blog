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
    @article = Article.new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      flash[:notice] = "Article created successfully"
      # redirect_to article_path(@article)
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    # byebug
    @article = Article.find(params[:id])
  end
  
  def update
    # byebug
    @article = Article.find(params[:id])
    
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end


end
