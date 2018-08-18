class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit
    set_article
  end

  def destroy
    set_article
    @article.destroy
    flash[:notice] = "Article was deleted gr8"
    redirect_to articles_path(@article)
  end

  def update
    set_article
    if @article.update(article_params)
      flash[:notice] = "Article was updated gr8" #this notice needs to be displayed in a view
      redirect_to article_path(@article)

    else
      render 'edit'
    end
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was created good job" #this notice needs to be displayed in a view
      redirect_to article_path(@article)

    else
      render 'new'
    end
  end

  def show
    set_article
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end

    def set_article
      @article = Article.find(params[:id])
    end

end
