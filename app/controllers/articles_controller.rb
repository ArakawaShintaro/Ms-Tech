class ArticlesController < ApplicationController
  def index
    @articles = Subject.all
  end

  def show
  end
end
