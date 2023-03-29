class RatingsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create 
        rating = user.ratings.create!(rating_params)
        render json: rating, status: :created
    end

    def update
        rating = find_rating
        rating.update!(rating_params) 
        render json: rating
    end

    def destroy 
        rating = rating_params
        rating.destroy
        head :no_content
    end

    private

    def find_rating
        user.ratings.find(params[:id])
    end

    def rating_params 
        params.permit(:movie_id,:rating)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
