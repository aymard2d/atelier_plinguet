class FurnituresController < ApplicationController

  def new
    @furniture = Furniture.new
  end

  def index
    @furnitures = Furniture.all
    @furniture_types = Furniture.pluck(:type_of_furniture).uniq
  end

  def show_by_type
    @furniture_type = params[:type]
    @furnitures = Furniture.where(type_of_furniture: @furniture_type)
  end

  def show
    @furniture = Furniture.find(params[:id])
  end

  def create
    @furniture = Furniture.find(furniture_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def furniture_params
    params.require(:furniture).permit(:name, :description, :color, :material, :date_of_manufacture, :type_of_furniture, :varnish, :teint, :paint_brand)
  end
end
