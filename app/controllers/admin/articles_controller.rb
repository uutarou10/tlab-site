class Admin::ArticlesController < ApplicationController
  layout 'admin/layouts/application'

  def index
    @articles = Article.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
