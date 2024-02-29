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
    colibri = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/colibri_logo_cujxhq.png"
    pure_and_paint = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/pure_and_paint_logo_qgsn1x.png"
    farrow_and_ball = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/farrow_and_ball_logo_meo66k.png"
    envie = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231823/atelier-plinguet/logo-envie_jfziwl.jpg"
    little_green = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707231822/atelier-plinguet/little_green_logo_dardnn.jpg"
    liberon = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1707238807/atelier-plinguet/liberon-logo_rvtwfa.jpg"
    v33 = "https://res.cloudinary.com/dnqkzzqga/image/upload/v1709209396/atelier-plinguet/v33_uss7pv.png"
    @pure_and_paint = pure_and_paint
    @farrow_and_ball = farrow_and_ball
    @little_green = little_green
    @colibri = colibri
    @envie = envie
    @liberon = liberon
    @v33 = v33
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
    redirect_to accessories_path, status: :see_other, notice: "#{@accessory.name.capitalize} a bien été supprimé(e) !"
  end

  def delete_photo_attachment
    @accessory = Accessory.find(params[:id])
    @accessory.photo.purge
    redirect_back fallback_location: root_path, notice: 'La photo a bien été détachée de la création.'
  end

  private

  def set_accessory
    @accessory = Accessory.find(params[:id])
  end

  def accessory_params
    params.require(:accessory).permit(:name, :description, :material, :type_of, :manufacture_date, :color, :paint_brand, :varnish, :varnish_brand, :tint, photos: [])
  end
end
