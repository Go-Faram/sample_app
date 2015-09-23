class ArticlesController < ApplicationController

  # http_basic_authenticate_with name: 'dhh', password: 'secret', except: [:index, :show]
  # load_and_authorize_resource
  def new
    @article = Article.new
  end

  def show
    @article= Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
    render :text => "forhibit" unless can? :index, @articles
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
    # render plain: params[:article].inspect
    logger.debug "debug::#{params}"
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
