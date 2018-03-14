class Api::V1::ArticlesController < ApplicationController
  protect_from_forgery
  before_action :authenticate_user

  def index
    render json: Article.all
  end

  def create
    article = Article.new(article_params)
    article.user = User.first # TODO: ログイン中のユーザーを指定する
    article.published_at = Time.now
    article.save!

    render json: article
  end

  def update
    article = Article.find(params[:id])
    article.update_attributes!(article_params)
    render json: article
  end

  def show
    article = Article.find(params[:id])

    render json: article
  end

  def destroy
    Article.find(params[:id]).destroy
    head 204
  end

  private

  def article_params
    params.permit(:title, :body)
  end
end
