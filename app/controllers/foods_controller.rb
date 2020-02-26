class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
   @food = Food.new
  end

  def show
    @food = Food.find(params[:id])
  end

  def create
    Food.create(food_params)
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  

  def food_params
    params.require(:food).permit(:title, :story, :url, :image)
  end
end
end
