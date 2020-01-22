class ProjectsController < ApplicationController
    def index
        projects = Project.all
        render json: projects
    end

    def show
        project = Project.find(params[:id])
        render json: project
    end

    def create
        project = Project.create(project_params)
        render json: project
    end

    def update
        project = Project.find(params[:id])
        project.update(project_params)
        render json: project
    end

    def destroy
        project = Project.find(params[:id])
        project.destroy
    end

    private

    def project_params
        params.permit(:description, :completed, :user_id, :title)
    end
end
