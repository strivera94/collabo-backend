class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review
    end

    def create
        review = Review.create(review_params)
        render json: review
    end

    private

    def review_params
        params.permit(:content, :rating, :reviewer_id, :reviewee_id)
    end

end
