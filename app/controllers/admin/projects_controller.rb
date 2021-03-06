class Admin::ProjectsController < ApplicationController
  layout 'admin/layouts/application'
  before_action :require_sign_in!

  def index
    @projects = Project.all
  end

  def create
    @project = Project.create!(project_attributes)
    redirect_to '/admin/projects'
  end

  def show
    @project = Project.find(params[:id])
  end

  def destroy
    Project.destroy(params[:id])
    redirect_to '/admin/projects'
  end

  def new
    @project = Project.new
  end

  private

  def project_attributes
    params.require(:project).permit(:title, :description, :feed_url, :url, :site_title, :abbreviation)
  end
end
