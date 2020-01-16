class CollaborationsController < ApplicationController
    def index
        collaborations = Collaboration.all
        render json: collaborations
    end

    def show
        collaboration = Collaboration.find(params[:id])
        render json: collaboration
    end

    def create
        collaboration = Collaboration.create(collaboration_params)
        render json: collaboration
    end

    private

    def collaboration_params
        params.permit(:user_id, :project_id, :id)
    end

end
