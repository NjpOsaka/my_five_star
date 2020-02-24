class FashionsController < ApplicationController
  def index
  end

  def new
    @fashion =Fashion.new
  end

  def show
  end

  def create
    Fashions.create(fashion_params)
    redirect_to root_path
  end

  private
  def fashion_params
    params.require(:fashion).permit(:title, :image, :story, :url)
  end
end
