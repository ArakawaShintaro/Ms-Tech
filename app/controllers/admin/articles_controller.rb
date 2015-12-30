class Admin::ArticlesController < ApplicationController

  def new
    @article = Article.new
    @subjects = Subject.order(created_at: :desc).limit(5)
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path, success: "Success!"
    else
      redirect_to new_admin_article_path, warnimg: "Failure!"
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content, :subject_id)
  end

end
