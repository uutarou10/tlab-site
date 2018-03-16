class Admin::ArticlesController < ApplicationController
  layout 'admin/layouts/application'

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article = Article.new
    @article.user = User.first # TODO: ログイン中のユーザー
    @article.title = params[:article][:title]
    @article.body  = params[:article][:body].read.force_encoding('utf-8')
    @article.published_at = Time.current
    @article.save!
    redirect_to '/admin/articles'
  end

  def edit
  end

  def update
  end

  def destroy
    Article.destroy(params[:id])
    redirect_to '/admin/articles'
  end
end
