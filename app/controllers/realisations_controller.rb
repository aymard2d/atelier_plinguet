class RealisationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @realisation = Realisation.new
  end

  def index
    @realisations = Realisation.all
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
    @realisation = Realisation.create(realisation_params)
  end

  def update
  end

  def edit
  end

  def delete
  end

  private

  def realisation_params
    params.require(:realisations).permit(:name, :description, :manufacture_date, :type_of_realisation)
  end
end
