class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_realisation, only: [:show, :destroy, :edit, :update]

  def new
    @realisation = Realisation.new
  end

  def index
    @realisations = Realisation.all
    @realisation = Realisation.new
    @realisation_types = Realisation.pluck(:type_of_realisation).uniq
    sql_subquery = "type_of_realisation ILIKE :query OR description ILIKE :query"
    @realisations = @realisations.where(sql_subquery, query: "%#{params[:query]}%")
    respond_to do |format|
      format.html
      format.text { render partial: "realisations/realisation_filtered", locals: {realisations: @realisations}, formats: [:html] }
    end
  end

  def show
  end

  def show_by_type
    @realisation_type = params[:type]
    @realisations = Realisation.where(type_of_realisation: @realisation_type)
  end

  def create
    @realisation = Realisation.new(realisation_params)
    respond_to do |format|
      if @realisation.save
        format.html { redirect_to realisations_path }
        format.text { render partial: "realisations/list", locals: { realisation: @realisation }, formats: [:html] }
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
    redirect_to realisations_path, status: :see_other
  end

  private

  def set_realisation
    @realisation = Realisation.find(params[:id])
  end

  def realisation_params
    params.require(:realisation).permit(:name, :description, :localisation,  :manufacture_date, :type_of_realisation, photos: [])
  end
end
