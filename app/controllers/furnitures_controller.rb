class FurnituresController < ApplicationController

    def new
			@furniture = Furniture.new
    end

    def index
			@furnitures = Furniture.all
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
			params.require(:furniture).permit(:name, :description, :color, :material, :date_of_manufacture, :type_of_furniture)
		end
end
