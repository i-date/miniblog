class ArticlesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @articles = Article.includes(:user).order("updated_at DESC")
  end

  def new
  end

  def create
    Article.create(article_params)
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    article = Article.find(params[:id])
    article.update(title: article_params[:title], body: article_params[:body])
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy if article.user_id === current_user.user_id
  end

  private
  def article_params
    params.permit(:title, :body).merge(user_id: current_user.user_id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
