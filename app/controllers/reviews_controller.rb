class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index 
        reviews = Review.all 
        render json: reviews
    end

    def user_reviews
        reviews = user.reviews.all 
        render json: reviews  
    end

    def show 
        review = find_review
        render json: review
    end

    def destroy 
        review = find_review
        review.destroy
        head :no_content
    end

    def create 
        review = user.reviews.create!(review_params)
        render json: review, status: :created
    end

    def update 
        review = find_review
        review.update!(review_params)
    end

    private 

    def find_review
        user.reviews.find(params[:id])
        # Review.find(params[:id])
    end

    def review_params 
        params.permit(:comment)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
