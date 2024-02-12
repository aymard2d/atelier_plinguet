class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @realisation = Realisation.new
  end

  def index
    @realisations = Realisation.all
    @realisation = Realisation.new
    @realisation_types = Realisation.pluck(:type_of_realisation).uniq
  end

  def show
    @realisation = Realisation.find(params[:id])
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
    @realisation = Realisation.find(params[:id])
    if @realisation.update(realisation_params)
      redirect_to realisation_path(@realisation)
    else
      render :edit
    end
  end

  def edit
  end

  def delete
  end

  private

  def realisation_params
    params.require(:realisation).permit(:name, :description, :localisation,  :manufacture_date, :type_of_realisation, photos: [])
  end
end
