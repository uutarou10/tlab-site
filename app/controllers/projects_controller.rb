class ProjectsController < ApplicationController
  def index
    @title = 'プロジェクト'
    @projects = Project.all
  end
end
