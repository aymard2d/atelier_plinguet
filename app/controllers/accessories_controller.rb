class AccessoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_accessory, only: [:show, :edit, :destroy, :update]

  def new
    @accessory = Accessory.new
  end

  def index
    @accessory = Accessory.new
    @accessories = Accessory.all.order("created_at DESC")
    @accessory_types = Accessory.pluck(:type_of).uniq
    sql_subquery = "type_of ILIKE :query OR description ILIKE :query OR material ILIKE :query"
    @accessories = @accessories.where(sql_subquery, query: "%#{params[:query]}%")
    respond_to do |format|
      format.html
      format.text { render partial: "accessories/accessory_filtered", locals: {accessories: @accessories}, formats: [:html] }
    end
  end
  
  def show
  end


  def create
    @accessory = Accessory.new(accessory_params)
    @accessories = Accessory.all
    respond_to do |format|
      if @accessory.save
        format.html { redirect_to accessories_path }
        format.text { render partial: "accessories/accessory_filtered", locals: { accessory: @accessory }, formats: [:html] }
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
    redirect_to accessories_path, status: :see_other, notice: "#{@accessory.name.capitalize} a bien été supprimé(e) !}"
  end

  def delete_photo_attachment
    @accessory = Accessory.find(params[:id])
    @accessory.photo.purge
    redirect_back fallback_location: root_path, notice: 'Photo attachment was successfully deleted.'
  end

  private

  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  def accessory_params
    params.require(:accessory).permit(:name, :description, :material, :type_of, :manufacture_date, photos: [])
  end
end
