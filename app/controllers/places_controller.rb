class PlacesController < ApplicationController
  def index
    @places = Place.all
  end

  def new
   @place = Place.new
  end

  def show
    @place = Place.find(params[:id])
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  def update
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    redirect_to root_path
  end

  private
  def place_params
    params.require(:place).permit(:title, :story, :url, :image)
  end
end