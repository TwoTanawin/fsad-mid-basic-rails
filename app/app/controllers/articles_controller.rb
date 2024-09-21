class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @articles = Article.all
  end

  def show
    @articles = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @articles = Article.new(article_params)
    if @articles.save
      redirect_to @articles, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to @articles, notice: 'Article was successfully deleted.'
  end

  private
  def article_params
    params.require(:article).permit(:name, :url)
  end
end
