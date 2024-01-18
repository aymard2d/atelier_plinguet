class AccessoriesController < ApplicationController
  
  def index
    @accessories = Accessory.all
  end
  
  def show
    @accessory = Accessory.find(params[:id])
  end

  def new
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.create(accessory_params)
  end
  
  def edit
    @accessory = Accessory.find(params[:id])
  end

  def update
  end

  def delete
    @accessory = Accessory.find(params[:id])
  end


  private

  def accesory_params
    params.require(:furniture).permit(:name, :description, :material, :type_of)
  end
end
