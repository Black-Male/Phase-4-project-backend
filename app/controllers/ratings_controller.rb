class RatingsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # before_action :session_expired?

    def create 
        rating = user.ratings.create!(rating_params)
        average_rating = calculate_average_rating(params[:movie_id])
        render json: rating.merge(average_rating: average_rating), status: :created
    end

    def update
        rating = find_rating
        rating.update!(rating_params) 
        average_rating = calculate_average_rating(params[:movie_id])
        render json: rating.merge(average_rating: average_rating)
    end

    def destroy 
        rating = find_rating
        rating.destroy
        head :no_content
    end

    def calculate_average_rating(movie_id)
        Rating.where(movie_id: movie_id).average(:rating).round(2)
    end

    def popularity
        ratings = Rating.where(movie_id: params[:movie_id]).order(rating: :desc).includes(:movie)
        render json: ratings, include: :movie
    end

    private

    def find_rating
        user.ratings.find(params[:id])
    end

    def rating_params 
        params.permit(:movie_id,:rating,:user_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
