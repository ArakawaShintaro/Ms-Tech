class Admin::ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    binding.pry
    @article = Article.new(article_params)
    if @article.save
      redirect_to new_admin_article_path, success: "Success!"
    else
      redirect_to new_admin_article_path, warnimg: "Failure!"
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end

end
