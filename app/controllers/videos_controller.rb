class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
   @video = Video.new
  end

  def show
    @video = Video.find(params[:id])
  end

  def create
    Video.create(video_params)
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  def video_params
    params.require(:video).permit(:title, :story, :url, :image)
  end
end
