class FavoritesController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # before_action :session_expired?
    before_action :verify_auth


    def create 
        favorite = user.favorites.create!(favorite_params)
        render json: favorite, status: :created
    end

    def index 
        favorites = user.favorites.all 
        render json: favorites 
    end

    def show 
        favorite = find_favorite
        render json: favorite
    end

    def destroy 
        favorite = find_favorite
        favorite.destroy
        head :no_content
    end


    private 

    def find_favorite 
        user.favorites.find(params[:id])
    end

    def favorite_params
        params.permit(:movie_id,:user_id)
    end


    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
