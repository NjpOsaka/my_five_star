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
    @fashion = Fashion.new(fashion_params)
    @fashion.save
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  

  def fashion_params
    params.require(:fashion).permit(:title, :story, :url)
  end
end
