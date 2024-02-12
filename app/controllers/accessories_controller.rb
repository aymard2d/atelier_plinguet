class AccessoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_accessory, only: [:show, :edit, :destroy, :update]

  def index
    @accessories = Accessory.all
    @accessory = Accessory.new
    @accessory_types = Accessory.pluck(:type_of).uniq
  end
  
  def show
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
  end

  def update
    if @accessory.update(accessory_params)
      redirect_to accessory_path(@accessory)
    else
      render :edit
    end
  end

  def destroy
    @accessory.destroy
    redirect_to accessories_path, status: :see_other
  end


  private

  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  def accessory_params
    params.require(:accessory).permit(:name, :description, :material, :type_of, :manufacture_date, photos: [])
  end
end
