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
    colibri = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234879/Atelier%20Plinguet/Logos/colibri_logo_ffkgxe.png"
    pure_and_paint = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234884/Atelier%20Plinguet/Logos/pure_and_paint_logo_vqyltm.png"
    farrow_and_ball = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234879/Atelier%20Plinguet/Logos/farrow_and_ball_logo_xp3m1g.png"
    envie = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234882/Atelier%20Plinguet/Logos/logo-envie_mkkumd.jpg"
    little_green = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234881/Atelier%20Plinguet/Logos/little_green_logo_frzesn.jpg"
    liberon = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234881/Atelier%20Plinguet/Logos/liberon-logo_rzga1q.jpg"
    v33 = "https://res.cloudinary.com/dmmqaflqm/image/upload/v1710234883/Atelier%20Plinguet/Logos/v33_lwcdra.png"
    
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
