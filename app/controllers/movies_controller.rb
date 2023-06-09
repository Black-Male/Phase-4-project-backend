class MoviesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index 
        movies = Movie.all 
        render json: movies 
    end

    def show 
        movie = find_movie
        render json: movie
    end

    private 
    def find_movie 
        Movie.find(params[:id])
    end

    def render_not_found_response 
        render json: {errors: "Movie not found"}, status: :not_found
    end
end
