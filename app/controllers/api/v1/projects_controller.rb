class Api::V1::ProjectsController < ApplicationController
  protect_from_forgery
  def index
    render json: Project.all.select_attr
  end

  def create
    project = Project.create!(project_attribute)
    render json: project
  end

  def update
    project = Project.find(params[:id])
    project.update_attributes(project_attribute)
    project.save!
    render json: project
  end

  def show
    render json: Project.find(params[:id])
  end

  def destroy
    Project.find(params[:id]).destroy!
    head 204
  end

  private

  def project_attribute
    params.permit(:title, :description, :feed_url, :url, :site_title, :abbreviation)
  end
end
