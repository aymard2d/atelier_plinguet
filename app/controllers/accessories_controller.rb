class AccessoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @accessories = Accessory.all
    @accessory = Accessory.new
    @accessory_types = Accessory.pluck(:type_of).uniq
  end
  
  def show
    @accessory = Accessory.find(params[:id])
  end

  def show_by_type
    @accessory_type = params[:type]
    @accessories = Accessory.where(type_of: @accessory_type)
  end

  def new
    @accessory = Accessory.new
  end

  def create
    @accessory = Accessory.new(accessory_params)
    respond_to do |format|
      if @accessory.save
        format.html { redirect_to accessories_path }
        format.text { render partial: "accessories/list", locals: { accessory: @accessory }, formats: [:html] }
      else
        render :index, status: :unprocessable_entity
      end
    end
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
    params.require(:accessory).permit(:name, :description, :material, :type_of, :manufacture_date, :photos)
  end
end
