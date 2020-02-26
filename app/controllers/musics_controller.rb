class MusicsController < ApplicationController
  def index
    @musics = Music.all
  end

  def new
   @music = Music.new
  end

  def show
    @music = Music.find(params[:id])
  end

  def create
    Music.create(music_params)
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  def music_params
    params.require(:music).permit(:title, :story, :url, :image)
  end
end
