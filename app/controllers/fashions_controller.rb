class FashionsController < ApplicationController

  def index
    @fashions = Fashion.all
  end

  def new
   @fashion = Fashion.new
  end

  def show
    @fashion = Fashion.find(params[:id])
  end

  def create
    Fashion.create(fashion_params)
    redirect_to root_path
  end

  def update
  end

  def destroy
    fashion = Fashion.find(params[:id])
    fashion.destroy
    redirect_to root_path
  end

  private
  def fashion_params
    params.require(:fashion).permit(:title, :story, :url, :image)
  end
end
