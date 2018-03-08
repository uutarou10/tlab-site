class WelcomeController < ApplicationController
  include ArticleListService

  def index
    @articles = article_list(5)
  end
end
