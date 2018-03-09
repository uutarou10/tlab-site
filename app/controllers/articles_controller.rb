class ArticlesController < ApplicationController
  include ArticleListService

  def index
    @title = 'お知らせ一覧'

    # TODO: pagination
    @articles = article_list
  end

  def show
    @article = Article.find(params[:id])
    @title = @article.title
  end
end
