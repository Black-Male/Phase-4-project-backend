class VideosController < ApplicationController

    def create 
        video = user.videos.create!(video_params)
        render json: video, status: :created
    end 

    def all_videos 
        videos = Video.all 
        render json: videos
    end

    def index 
        videos = user.videos.all 
        render json: videos
    end 

    def update 
        video = find_video
        video.update!(video_params) 
        render json: video
    end 

    def destroy
        video = video_params
        video.destroy
        head :no_content
    end

    def show
        video = find_video
        render json: video 
    end 

    private 

    def find_video 
        user.videos.find(params[:id])
    end

    def video_params 
        params.permit(:title, :description, :video)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
