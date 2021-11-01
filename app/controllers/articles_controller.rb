class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # except show and index, all actions needs require_user.
  before_action :require_user, except: [:show, :index]
  # order matters! require_same_user has to go AFTER require_user (or what?)
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
    # debug
    # byebug
  end

  def index
    # @articles = Article.all
    @articles = Article.paginate(page: params[:page], per_page: 5)
  end

  def new
    @article = Article.new
  end

  def create
    # byebug
    # render plain: params[:article].inspect
    @article = Article.new(article_params)
    @article.user = current_user
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
  end
  
  def update
    # byebug
    
    if @article.update(article_params)
      flash[:notice] = "Article updated successfully"
      redirect_to @article
    else
      render 'edit'
    end
  end

  def haha
    byebug
    render plain: "Haha"
  end

  def delete
  end


  def destroy
    @article.destroy
    flash[:notice] = "Article deleted successfully"
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, category_ids: [])
  end

  def require_same_user
    if (current_user != @article.user) && !current_user.admin?
      flash[:alert] = "You can only edit or delete your own article."
      redirect_to @article
    end
  end

end
