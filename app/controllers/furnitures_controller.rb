class FurnituresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_furniture, only: [:show, :edit, :destroy, :update]

  def new
    @furniture = Furniture.new
  end

  def index
    @furniture = Furniture.new
    @furnitures = Furniture.all.order("created_at DESC")
    @furniture_types = Furniture.pluck(:type_of_furniture).uniq
    #if params[:query].present?
      #@furnitures = @furnitures.where(type_of_furniture: params[:query])
    #end
    sql_subquery = "type_of_furniture ILIKE :query OR description ILIKE :query OR color ILIKE :query"
    @furnitures = @furnitures.where(sql_subquery, query: "%#{params[:query]}%")
    respond_to do |format|
      format.html
      format.text { render partial: "furnitures/furniture_filtered", locals: {furnitures: @furnitures}, formats: [:html] }
    end
  end

  def show
    colibri = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/colibri_logo_cujxhq.png"
    pure_and_paint = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/pure_and_paint_logo_qgsn1x.png"
    farrow_and_ball = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/farrow_and_ball_logo_meo66k.png"
    envie = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231823/atelier-plinguet/logo-envie_jfziwl.jpg"
    little_green = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/little_green_logo_dardnn.jpg"
    liberon = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707238807/atelier-plinguet/liberon-logo_rvtwfa.jpg"
    @pure_and_paint = pure_and_paint
    @farrow_and_ball = farrow_and_ball
    @little_green = little_green
    @colibri = colibri
    @envie = envie
    @liberon = liberon
  end

  def create
    @furnitures = Furniture.all.order("created_at DESC")
    @furniture = Furniture.new(furniture_params)
    respond_to do |format|
      if @furniture.save
        format.html { redirect_to furnitures_path }
        format.text { render partial: "furnitures/furniture_filtered", locals: { furniture: @furniture }, formats: [:html] }
      else
        render :index, status: :unprocessable_entity
      end
    end
  end

  def edit
  end

  def update
    if @furniture.update(furniture_params)
      redirect_to furniture_path(@furniture)
    else
      render :edit
    end
  end

  def destroy
    @furniture.destroy
    redirect_to furnitures_path, status: :see_other
  end

  def delete_photo_attachment
    @furniture = Furniture.find(params[:id])
    @photo = @furniture.photos.find_by_blob_id(params[:photo_id])
    @photo.detach if @photo
    redirect_to @furniture, notice: 'Photo attachment was successfully removed.'
  end
  
  
  
  private

  def set_furniture
    @furniture = Furniture.find(params[:id])
  end

  def furniture_params
    params.require(:furniture).permit(:name, :description, :color, :material, :date_of_manufacture, :type_of_furniture, :varnish, :varnish_brand, :teint, :paint_brand, :existing_photos_ids, photos: [])
  end
end
