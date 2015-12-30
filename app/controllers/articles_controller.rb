class ArticlesController < ApplicationController
  def index
    @articles = Article.eager_load(:subject).order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end
end
