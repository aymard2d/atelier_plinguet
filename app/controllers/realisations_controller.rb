class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_realisation, only: [:show, :destroy, :edit, :update]

  def new
    @realisation = Realisation.new
  end

  def index
    @realisation = Realisation.new
    @realisations = Realisation.all.order("created_at DESC")
    @realisation_types = Realisation.pluck(:type_of_realisation).uniq
    sql_subquery = "type_of_realisation ILIKE :query OR description ILIKE :query"
    @realisations = @realisations.where(sql_subquery, query: "%#{params[:query]}%")
    respond_to do |format|
      format.html
      format.text { render partial: "realisations/realisation_filtered", locals: {realisations: @realisations}, formats: [:html] }
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

  def show_by_type
    @realisation_type = params[:type]
    @realisations = Realisation.where(type_of_realisation: @realisation_type)
  end

  def create
    @realisation = Realisation.new(realisation_params)
    @realisations = Realisation.all
    respond_to do |format|
      if @realisation.save
        format.html { redirect_to realisations_path }
        format.text { render partial: "realisations/realisation_filtered", locals: { realisation: @realisation }, formats: [:html] }
      else
        render :index, status: :unprocessable_entity
      end
    end
  end

  def update
    if @realisation.update(realisation_params)
      redirect_to realisation_path(@realisation)
    else
      render :edit
    end
  end

  def edit
  end

  def destroy
    @realisation.destroy
    redirect_to realisations_path, status: :see_other, notice: "#{@realisation.name.capitalize} a bien été supprimé(e) !"
  end

  def delete_photo_attachment
    @realisation = Realisation.find(params[:id])
    @realisation.photo.purge
    redirect_back fallback_location: root_path, notice: 'Photo attachment was successfully deleted.'
  end

  private

  def set_realisation
    @realisation = Realisation.find(params[:id])
  end

  def realisation_params
    params.require(:realisation).permit(:name, :description, :localisation,  :manufacture_date, :type_of_realisation, :varnish, :varnish_brand, :tint, :color, :paint_brand, photos: [])
  end
end
